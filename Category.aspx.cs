using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Category : System.Web.UI.Page
{
    public int shopID;

    protected void Page_Load(object sender, EventArgs e)
    {
        lblShopName.Text = getShopName();
    }

    public String getShopName()
    {
        DataView shopNameTable = (DataView)ShopNameDataSource.Select(DataSourceSelectArguments.Empty);
        DataRowView row = (DataRowView)shopNameTable[0];
        return row["shop_name"].ToString();
    }
}