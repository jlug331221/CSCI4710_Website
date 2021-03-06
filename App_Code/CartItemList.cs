﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class CartItemList
{
    private List<CartItem> cartItems;

    public CartItemList()
    {
        cartItems = new List<CartItem>();
    }

    public int Count
    {
        get { return cartItems.Count; }
    }

    public int totalItemCount()
    {
        int total = 0;
        foreach(CartItem c in cartItems) {
            total += c.Quantity * 1;
        }
        return total;
    }

    public CartItem this[int index]
    {
        get { return cartItems[index]; }
        set { cartItems[index] = value; }
    }

    public CartItem this[string productName]
    {
        get
        {
            foreach (CartItem c in cartItems)
                if (c.Product.ProductName == productName) return c;
            return null;
        }
    }

    public static CartItemList GetCart()
    {
        CartItemList cart = (CartItemList)HttpContext.Current.Session["Cart"];
        if (cart == null)
            HttpContext.Current.Session["Cart"] = new CartItemList();
        return (CartItemList)HttpContext.Current.Session["Cart"];
    }

    public void AddItem(Product product, int quantity)
    {
        CartItem c = new CartItem(product, quantity);
        cartItems.Add(c);
    }

    public void RemoveAt(int index)
    {
        cartItems.RemoveAt(index);
    }

    public void Clear()
    {
        cartItems.Clear();
    }

    public decimal getCartSubTotal() {
        decimal subtotal = 0;
        foreach(CartItem c in cartItems)
        {
            subtotal += c.Quantity * c.Product.UnitPrice;
        }

        return subtotal;
    }

    public double getTotalCartItemsWeight()
    {
        double productWeight = 0.0;
        double totalWeight = 0.0;
        foreach(CartItem c in cartItems)
        {
            Product p = c.Product;
            productWeight = Convert.ToDouble((p.Weight));
            totalWeight += productWeight;
        }

        return totalWeight;
    }
}