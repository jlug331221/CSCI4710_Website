using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Product
/// </summary>
public class Product
{
    public int ProductID;
    public string ProductName { get; set; }
    public string Description { get; set; }
    public decimal UnitPrice { get; set; }
    public double Weight { get; set; }
    public string ImageFile { get; set; }
    public string BrandImage { get; set; }
    public int ProductOnHand { get; set; }
}