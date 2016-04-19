using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerificationPage : System.Web.UI.Page
{
    private CartItemList cartItems;

    protected void Page_Load(object sender, EventArgs e)
    {
        cartItems = CartItemList.GetCart();

        ContentPlaceHolder checkOutPageContentHolder = (ContentPlaceHolder)Page
            .PreviousPage.Form.FindControl("ContentPlaceHolder1");
        
        if (PreviousPage != null && PreviousPage.IsCrossPagePostBack)
        {
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
        decrementQuantity();
        Response.Redirect("OrderVerificationPage.aspx");
    }

    private void decrementQuantity()
    {  
        for (int i = 0; i < cartItems.Count; i++)
        {
            CartItem item = cartItems[i];
            int quantity = item.Quantity;
            int id = item.Product.ProductID;
            SqlDataSource1.UpdateParameters["product_id"].DefaultValue
                = id.ToString();
            int newQuantity = item.Product.ProductOnHand - quantity;
            SqlDataSource1.UpdateParameters["prod_on_hand"].DefaultValue
                = newQuantity.ToString();
            SqlDataSource1.Update();
        }
    }

    protected void SqlDataSource1_Updated(object sender, SqlDataSourceStatusEventArgs e)
    {
       
    }
}