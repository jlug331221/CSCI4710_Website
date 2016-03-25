using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

public partial class Product : System.Web.UI.Page
{
    public int ProductID { get; set; }
    public string ProductName { get; set; }
    public string Description { get; set; }
    public decimal UnitPrice { get; set; }
    public double Weight { get; set; }
    public string ImageFile { get; set; }
    public int BrandID { get; set; }
    public int ProductOnHand { get; set; }

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