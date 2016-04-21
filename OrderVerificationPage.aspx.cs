using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;

public partial class VerificationPage : System.Web.UI.Page
{
    private CartItemList cartItems;
    private int cartItemQuantity;
    private int cartItemProductId;

    private const decimal flatRateShippingCost = 11.99m;
    private const decimal taxRate = .045m;

    private decimal subTotal = 0.0m;
    private decimal tax = 0.0m;
    private decimal shippingCost = 0.0m;
    private decimal total = 0.0m;

    protected void Page_Load(object sender, EventArgs e)
    {
        cartItems = CartItemList.GetCart();
        
        if (PreviousPage != null && PreviousPage.IsCrossPagePostBack)
        {
            ContentPlaceHolder checkOutPageContentHolder = (ContentPlaceHolder)Page
            .PreviousPage.Form.FindControl("ContentPlaceHolder1");

            TextBox txtName = (TextBox)checkOutPageContentHolder
                .FindControl("inputName");
            TextBox txtCCNumber = (TextBox)checkOutPageContentHolder
                .FindControl("inputCCNumber");
            DropDownList ddlShippingMethod = (DropDownList)checkOutPageContentHolder
                .FindControl("ddlMailDelivery");
            DropDownList ddlCCExpMonth = (DropDownList)checkOutPageContentHolder
                .FindControl("ddlSelectExpMonth");
            DropDownList ddlCCExpYear = (DropDownList)checkOutPageContentHolder
                .FindControl("ddlSelectExpYear");
            
            lblInputNameFromChkOutPage.Text = txtName.Text;
            lblInputCCNumberFromChkOutPage.Text = "XXXX-XXXX-XXXX-" + 
                txtCCNumber.Text.Substring(12);
            lblSelectedShipping.Text = ddlShippingMethod.Text.ToString();
            lblCCExpMonth.Text = ddlCCExpMonth.Text.ToString();
            lblCCExpYear.Text = ddlCCExpYear.Text.ToString();

            lblItemsCost.Text = cartItems.getCartSubTotal().ToString("c");

            shippingCost = calculateShippingCost(ddlShippingMethod.Text.ToString());
            lblShippingCost.Text = shippingCost.ToString("c");

            subTotal = calculateSubTotal();
            lblSubtotal.Text = subTotal.ToString("c");

            tax = calculateTax();
            lblTax.Text = tax.ToString("c");

            lblTotal.Text = (subTotal + tax).ToString("c");

        }
        else
        {
            lblInputNameFromChkOutPage.Text = "NO ORDER DATA AVAILABLE";
        }

        if (!IsPostBack)
        {
            this.DisplayCart();
        }
    }

    private void DisplayCart()
    {
        lstItemsCart.Items.Clear();
        CartItem item;
        for (int i = 0; i < cartItems.Count; i++)
        {
            item = cartItems[i];
            lstItemsCart.Items.Add(item.Display());
        }
    }

    protected void btnSubmitOrder_Click(object sender, EventArgs e)
    {
        this.decrementOnHandQuantity();
        cartItems.Clear();
        ((Label)Master.FindControl("lblCartCount")).Text =
                    CartItemList.GetCart().totalItemCount().ToString();
        Response.Redirect("OrderPlaced.aspx");
    }

    private void decrementOnHandQuantity()
    {  
        for (int i = 0; i < cartItems.Count; i++)
        {
            CartItem item = cartItems[i];
            cartItemQuantity = item.Quantity;
            cartItemProductId = item.Product.ProductID;
            int newOnHandQuantity = item.Product.ProductOnHand - cartItemQuantity;
            
            SQLUpdateDataSource.UpdateParameters["product_id"].DefaultValue
                = cartItemProductId.ToString();
            
            SQLUpdateDataSource.UpdateParameters["prod_on_hand"].DefaultValue
                = newOnHandQuantity.ToString();
            SQLUpdateDataSource.Update();
        }
    }

    private decimal calculateShippingCost(String shippingSelection)
    {
        if (shippingSelection.Equals("USPS", StringComparison.Ordinal))
        {
            return flatRateShippingCost;
        }
        else if(shippingSelection.Equals("UPS Ground", StringComparison.Ordinal))
        {
            return flatRateShippingCost + 5.00m;
        }
        else
        {
            return flatRateShippingCost + 10.00m;
        }
    }

    private decimal calculateSubTotal()
    {
        return cartItems.getCartSubTotal() + shippingCost;
    }

    private decimal calculateTax()
    {
        return subTotal * taxRate;
    }
}