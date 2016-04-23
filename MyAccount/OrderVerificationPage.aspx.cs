using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;
using System.Web.Security;

public partial class VerificationPage : System.Web.UI.Page
{
    private CartItemList cartItems;
    private int cartItemQuantity;
    private int cartItemProductId;

    private const decimal flatRateShippingCost = 7.99m;
    private const decimal taxRate = .035m;

    private decimal subTotal = 0.0m;
    private double totalWeightOfItems = 0.0;
    private decimal additionalWeightCostInShipping = 0.0m;
    private decimal tax = 0.0m;
    private decimal shippingCost = 0.0m;
    private decimal total = 0.0m;

    protected void Page_Load(object sender, EventArgs e)
    {
        cartItems = CartItemList.GetCart();

        if (!Request.IsSecureConnection)
        {
            string url = "https:" + ConfigurationManager.AppSettings["AppPath"]
                + "OrderVerification.aspx";
            Response.Redirect(url);
        }

        if (PreviousPage != null && PreviousPage.IsCrossPagePostBack)
        {
            ContentPlaceHolder checkOutPageContentHolder = (ContentPlaceHolder)Page
            .PreviousPage.Form.FindControl("ContentPlaceHolder1");

            TextBox txtName = (TextBox)checkOutPageContentHolder
                .FindControl("inputName");
            TextBox txtCCNumber = (TextBox)checkOutPageContentHolder
                .FindControl("inputCCNumber");
            TextBox txtShippingStreet = (TextBox)checkOutPageContentHolder
                .FindControl("inputStreet");
            TextBox txtShippingCity = (TextBox)checkOutPageContentHolder
                .FindControl("inputCity");
            TextBox txtZipCode = (TextBox)checkOutPageContentHolder
                .FindControl("inputZipCode");
            DropDownList ddlSelectedState = (DropDownList)checkOutPageContentHolder
                .FindControl("ddlStates");
            DropDownList ddlShippingMethod = (DropDownList)checkOutPageContentHolder
                .FindControl("ddlMailDelivery");
            DropDownList ddlCCExpMonth = (DropDownList)checkOutPageContentHolder
                .FindControl("ddlSelectExpMonth");
            DropDownList ddlCCExpYear = (DropDownList)checkOutPageContentHolder
                .FindControl("ddlSelectExpYear");
            
            lblInputNameFromChkOutPage.Text = txtName.Text;

            CCNumberWithoutDashes.Text = txtCCNumber.Text.ToString();
            lblInputCCNumberFromChkOutPage.Text = "XXXX-XXXX-XXXX-" + 
                txtCCNumber.Text.Substring(12);

            lblInputStreetFromChkOutPage.Text = txtShippingStreet.Text.ToString();
            lblInputCityFromChkOutPage.Text = txtShippingCity.Text.ToString();
            lblSelectStateFromChkOutPage.Text = ddlSelectedState.Text.ToString();
            lblZipCodeFromChkOutPage.Text = txtZipCode.Text.ToString();
            lblSelectedShipping.Text = ddlShippingMethod.Text.ToString();
            lblCCExpMonth.Text = ddlCCExpMonth.Text.ToString();
            lblCCExpYear.Text = ddlCCExpYear.Text.ToString();

            lblItemsCost.Text = cartItems.getCartSubTotal().ToString("c");

            totalWeightOfItems = cartItems.getTotalCartItemsWeight();
            additionalWeightCostInShipping = calculateAdditionalWeightCostInShipping();

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
        this.putInvoice();

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

    private decimal calculateAdditionalWeightCostInShipping()
    {
        if(totalWeightOfItems <= 5.0)
        {
            return 0.00m;
        }
        if(totalWeightOfItems > 5.0 && totalWeightOfItems <= 25)
        {
            return 10.00m;
        }
        return 20.00m;
    }

    private decimal calculateShippingCost(String shippingSelection)
    {
        if (shippingSelection.Equals("USPS", StringComparison.Ordinal))
        {
            return flatRateShippingCost + additionalWeightCostInShipping;
        }

        if (shippingSelection.Equals("UPS Ground", StringComparison.Ordinal))
        {
            return flatRateShippingCost + additionalWeightCostInShipping
                + 10.99m;
        }

        return flatRateShippingCost + additionalWeightCostInShipping
            + 20.99m;
    }

    private decimal calculateSubTotal()
    {
        return cartItems.getCartSubTotal() + shippingCost;
    }

    private decimal calculateTax()
    {
        return subTotal * taxRate;
    }

    private void putInvoice()
    {
        SqlDataSource1.InsertParameters["invoice_date"].DefaultValue = DateTime.Today.ToString();
        
        SqlDataSource1.InsertParameters["subtotal"].DefaultValue = shippingCost.ToString();
        SqlDataSource1.InsertParameters["shipping_method"].DefaultValue = lblSelectedShipping.Text.ToString();
        SqlDataSource1.InsertParameters["shipping_cost"].DefaultValue = shippingCost.ToString();
        SqlDataSource1.InsertParameters["sales_tax"].DefaultValue = tax.ToString();
        SqlDataSource1.InsertParameters["total"].DefaultValue = (subTotal + tax).ToString();
        SqlDataSource1.InsertParameters["credit_card_number"].DefaultValue = lblInputCCNumberFromChkOutPage.Text.ToString();
        SqlDataSource1.InsertParameters["card_exp_month"].DefaultValue = lblCCExpMonth.Text.ToString();

        MembershipUser CurrentUser = Membership.GetUser();
        SqlDataSource1.InsertParameters["UserId"].DefaultValue = CurrentUser.ProviderUserKey.ToString();

        SqlDataSource1.InsertParameters["card_exp_year"].DefaultValue = lblCCExpYear.Text.ToString();
        SqlDataSource1.Insert();
        
    }
}