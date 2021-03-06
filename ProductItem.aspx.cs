﻿using System;
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
        if (Request.IsSecureConnection)
        {
            string url = Request.Url.ToString().Replace("https:", "http:");
            Response.Redirect(url);
        }

        Product p = getProduct();
        lblProductName.Text = p.ProductName.ToString();
        lblProductPrice.Text = p.UnitPrice.ToString("c");
        lblDescription.Text = p.Description.ToString();
        lblWeight.Text += p.Weight.ToString();
        imgProduct.ImageUrl = "Images/Products/" + p.ImageFile;
        imgBrand.ImageUrl = "Images/Brands/" + p.BrandImage;
        lblOnhand.Text = "Quantity on hand: " + p.ProductOnHand.ToString();
        RangeValidator1.MaximumValue = p.ProductOnHand.ToString();
        RangeValidator1.ErrorMessage = "Quantity must range from 1 to " 
            + p.ProductOnHand.ToString();

        if(p.ProductOnHand <= 2)
        {
            lblQtyAlmostOut.Text = "Hurry! Buy now because there are only a limited amount of these " +
                "items left on hand.";
        }
        else
        {
            lblQtyAlmostOut.Text = "";
        }
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
        p.BrandImage = row["brand_image"].ToString();
        p.ProductOnHand = Convert.ToInt32(row["prod_on_hand"]);

        return p;
    }

    protected void btnAddToCart_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Product productToCart = getProduct();
            int lblQuantityInteger = Convert.ToInt32(txtQuantity.Text);
            if (lblQuantityInteger <= productToCart.ProductOnHand &&
                lblQuantityInteger > 0)
            {
                CartItemList cart = CartItemList.GetCart();
                CartItem cartItem = cart[productToCart.ProductName];

                if (cartItem == null)
                {
                    cart.AddItem(productToCart, Convert.ToInt32(txtQuantity.Text));
                }
                else
                {
                    cartItem.AddQuantity(Convert.ToInt32(txtQuantity.Text));
                }
                Response.Redirect("Cart.aspx");
            }
        }
    }
}