﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="OrderVerificationPage.aspx.cs" Inherits="VerificationPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="CSS/OrderVerification.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <h1>Confirm Your Order</h1>
            </div>
        </div>

        <hr />

        <div class="row">
            <div class="col-xs-12 col-md-12">
                <div class="row">
                    <div class="col-xs-2 col-md-1">
                        <h2><i class="fa fa-user" aria-hidden="true"></i></h2>
                    </div>
                    <div class="col-xs-10 col-md-11">
                        <h2>
                            Name: <asp:Label ID="lblInputNameFromChkOutPage" runat="server"
                                        CSSClass="label_text"></asp:Label>
                        </h2>
                    </div>
                </div>
                
            </div>
            <br /><br />
            <div class="col-xs-12 col-md-12">
                <div class="row">
                    <div class="col-xs-2 col-md-1">
                        <h2><i class="fa fa-credit-card" aria-hidden="true"></i></h2>
                    </div>
                    <div class="col-xs-10 col-md-11">
                        <h2>
                            CCNumber: <asp:Label ID="lblInputCCNumberFromChkOutPage" 
                                        runat="server" CssClass="label_text"></asp:Label>
                        </h2>
                    </div>
                </div>
            </div>
        </div>

        <hr />
        
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <asp:ListBox ID="lstItemsCart" runat="server"
                        class="lstCartItems" CssClass="lstCartItems">
                    </asp:ListBox>
                <br />
                <asp:Button ID="btnSubmitOrder" runat="server"
                                    class="btn btn-primary submit_order_btn"
                                    Text="Submit Order" PostBackUrl="~/Default.aspx" 
                                    CssClass="btn btn-primary CheckOut_confirm_order_btn" OnClick="btnSubmitOrder_Click">
                </asp:Button>
            </div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                UpdateCommand="UPDATE [Product] SET [prod_on_hand] = @prod_on_hand WHERE [product_id] = @original_product_id AND [prod_on_hand] = @original_prod_on_hand">
                <UpdateParameters>
                    <asp:Parameter Name="prod_on_hand" Type="Int32" />
                    <asp:Parameter Name="original_product_id" Type="Int32" />
                    <asp:Parameter Name="original_prod_on_hand" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        
    </div>
</asp:Content>
