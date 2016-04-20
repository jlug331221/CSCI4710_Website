using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;

public partial class Cart : System.Web.UI.Page
{
    private CartItemList cart;

    protected void Page_Load(object sender, EventArgs e)
    {
        cart = CartItemList.GetCart();
        ((Label)Master.FindControl("lblCartCount")).Text =
                    cart.totalItemCount().ToString();

        lblSubtotalAmt.Text = "Subtotal Amount due: " + cart.getCartSubTotal().ToString("c");

        if (!IsPostBack)
        {
            this.DisplayCart();
        }
    }

    private void DisplayCart()
    {
        lstItemsCart.Items.Clear();
        CartItem item;
        for (int i = 0; i < cart.Count; i++)
        {
            item = cart[i];
            lstItemsCart.Items.Add(item.Display());
        }
    }

    protected void btnCheckOut_Click(object sender, EventArgs e)
    {
        if(cart.Count == 0)
        {
            lblMessage.Text = "You must have at least one item in your cart " +
                "to begin the checkout process. Keep shopping Jeeper!";
        }
        else
        {
            Response.Redirect("~/MyAccount/CheckOut.aspx");
        }
    }

    protected void btnRemove_Click(object sender, EventArgs e)
    {
        if (cart.Count > 0)
        {
            if (lstItemsCart.SelectedIndex > -1)
            {
                cart.RemoveAt(lstItemsCart.SelectedIndex);
                this.DisplayCart();
                lblSubtotalAmt.Text = "Subtotal Amount due: " + cart.getCartSubTotal().ToString("c");
                ((Label)Master.FindControl("lblCartCount")).Text =
                    CartItemList.GetCart().totalItemCount().ToString();
            }
            else
            {
                lblMessage.Text = "Please select the item you want to remove.";
            }
        }
    }

    protected void btnEmpty_Click(object sender, EventArgs e)
    {
        if (cart.Count > 0)
        {
            cart.Clear();
            lstItemsCart.Items.Clear();
            lblSubtotalAmt.Text = "Subtotal Amount due: " + cart.getCartSubTotal().ToString("c");
            ((Label)Master.FindControl("lblCartCount")).Text =
                    CartItemList.GetCart().totalItemCount().ToString();
        }
    }
}