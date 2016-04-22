<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="CSS/Category.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">

                <asp:SqlDataSource ID="ShopNameDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [shop_name] FROM [Shop] WHERE ([shop_id] = @shop_id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="shop_id" QueryStringField="shop_id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

                <asp:Label ID="lblShopName" runat="server" Text="Shop Name" CssClass="shopLabel"></asp:Label>
                <br />
                <br />
                <div class="row">
                <div class="col-mid-12 col-md-offset-1">
                <asp:SqlDataSource ID="CategoryDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [category_id], [category_name], [shop_id] FROM [Category] WHERE ([shop_id] = @shop_id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="shop_id" QueryStringField="shop_id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:DataList ID="CategoryDataList" runat="server" DataKeyField="category_id" DataSourceID="CategoryDataSource">
                    <ItemTemplate>
                         <asp:HyperLink ID="sideHyperLink" runat="server" NavigateUrl=' <%# "ProductListing.aspx?category_id=" 
                                 + Eval("category_id")%>' Text='<%# Eval("category_name") %>'></asp:HyperLink>
                         <br />
                         <br />
                    </ItemTemplate>
                </asp:DataList>
                </div>
                    </div>
            </div>
        </div>
    </div>
</asp:Content>

