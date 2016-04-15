using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    private CartItemList cart;

    protected void Page_Load(object sender, EventArgs e)
    {
        cartCount.Text = CartItemList.GetCart().totalItemCount().ToString();
    }
}
