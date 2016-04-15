using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/**
* Not finished with this page yet. Need to eat food.
*/

public partial class VerificationPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ContentPlaceHolder checkOutPageContentHolder = (ContentPlaceHolder)Page
            .PreviousPage.Form.FindControl("ContentPlaceHolder1");
        
        if (PreviousPage != null && PreviousPage.IsCrossPagePostBack)
        {
            TextBox txtName = (TextBox)checkOutPageContentHolder.FindControl("inputName");
            if (txtName != null)
            {
                lblInputNameFromPrevPage.Text = txtName.Text;
            }
        }
        else
        {
            lblInputNameFromPrevPage.Text = "NO FORM DATA AVAILABLE";
        }
    }
}