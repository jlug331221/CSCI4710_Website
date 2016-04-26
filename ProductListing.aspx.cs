using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductListing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.IsSecureConnection)
        {
            string url = Request.Url.ToString().Replace("https:", "http:");
            Response.Redirect(url);
        }

        lblShopName.Text = getShopName();
        lblCategoryName.Text = getCategoryName();

    }
    public String getShopName()
    {
        DataView shopNameTable = (DataView)ShopNameDataSource2.Select(DataSourceSelectArguments.Empty);
        DataRowView row = (DataRowView)shopNameTable[0];
        return row["shop_name"].ToString();
    }

    
    public String getCategoryName()
    {
        DataView categoryNameTable = (DataView)ShopNameDataSource2.Select(DataSourceSelectArguments.Empty);
        DataRowView row = (DataRowView)categoryNameTable[0];
        return row["category_name"].ToString();
    }
}