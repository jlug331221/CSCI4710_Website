using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ProductItem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Product p = getProduct();
        lblProductName.Text = p.ProductName.ToString();
        lblProductPrice.Text = p.UnitPrice.ToString("c");
        lblDescription.Text = p.Description.ToString();
        lblWeight.Text = p.Weight.ToString();
        imgProduct.ImageUrl = "Images/Products/" + p.ImageFile;
    }

    public Product getProduct()
    {
        DataView productsTable = (DataView)ProductDataSource.Select(DataSourceSelectArguments.Empty);
        DataRowView row = (DataRowView)productsTable[0];

        Product p = new Product();
        p.ProductID = Convert.ToInt32(row["product_id"]);
        p.ProductName = row["product_name"].ToString();
        p.Description = row["description"].ToString();
        p.UnitPrice = (decimal)row["price"];
        p.Weight = Convert.ToDouble(row["weight"]);
        p.ImageFile = row["image"].ToString();
        p.BrandID = Convert.ToInt32(row["brand_id"]);
        p.ProductOnHand = Convert.ToInt32(row["prod_on_hand"]);

        return p;
    }
}