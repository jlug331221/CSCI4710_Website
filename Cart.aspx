﻿<%@ Page Title="Jeep Shop | Shopping Cart" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="CSS/Cart.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <h1>Here is your shopping cart:</h1>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-12 col-md-12">
                <div class="col-xs-12 col-md-6">
                    <asp:ListBox ID="lstItemsCart" runat="server"
                        class="lstItemsCart">
                    </asp:ListBox>
                    
                    <hr />
                    
                    <asp:Button ID="btnContinue" runat="server"
                        class="btn btn-primary continue_shopping_btn"
                        text="Continue Shopping">
                    </asp:Button>
                    <asp:Button ID="btnCheckOut" runat="server"
                        class="btn btn-primary"
                        text="Checkout" OnClick="btnCheckOut_Click">
                    </asp:Button> <br /> <br />

                    <asp:Label ID="lblMessage" runat="server" 
                        EnableViewState="False" 
                        ForeColor="Red">
                    </asp:Label>
                </div>

                <div class="col-xs-12 col-md-6">
                    <asp:Button ID="btnRemove" runat="server"
                        class="btn btn-primary"
                        text="Remove Item" OnClick="btnRemove_Click">
                    </asp:Button> <br />
                    <asp:Button ID="btnEmpty" runat="server"
                        class="btn btn-primary empty_cart_btn"
                        text="Empty Cart" OnClick="btnEmpty_Click">
                    </asp:Button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

