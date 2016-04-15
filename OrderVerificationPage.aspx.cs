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
        CartItemList.GetCart();

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

        /*rptCartItems.DataSource = cartItems;
        rptCartItems.DataBind();*/
    }
}