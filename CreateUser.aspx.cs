using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.IsSecureConnection)
        {
            string url = Request.Url.ToString().Replace("https:", "http:");
            Response.Redirect(url);
        }
    }
}