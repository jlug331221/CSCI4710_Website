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
            
            lblInputNameFromChkOutPage.Text = txtName.Text;
            lblInputCCNumberFromChkOutPage.Text = "XXXX-XXXX-XXXX-" + 
                txtCCNumber.Text.Substring(12);
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
}