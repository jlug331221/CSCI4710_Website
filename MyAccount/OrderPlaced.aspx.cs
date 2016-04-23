using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class OrderPlaced : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Request.IsSecureConnection)
        {
            string url = "https:" + ConfigurationManager.AppSettings["AppPath"]
                + "OrderPlaced.aspx";
            Response.Redirect(url);
        }

        if (PreviousPage != null)
        {
            ContentPlaceHolder orderVerificationPageContentHolder = (ContentPlaceHolder)Page
            .PreviousPage.Form.FindControl("ContentPlaceHolder1");
        }
    }
}