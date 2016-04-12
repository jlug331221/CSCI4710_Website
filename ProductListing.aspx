<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="ProductListing.aspx.cs" Inherits="ProductListing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="CSS/ProductListing.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">

                <asp:SqlDataSource ID="ShopNameDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [shop_name], [category_name] FROM [Shop] INNER JOIN [Category] ON (Shop.shop_id = Category.shop_id) WHERE (Category.category_id = @category_id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="category_id" QueryStringField="category_id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

                <asp:Label ID="lblShopName" runat="server" Text="Label" CssClass="listingLabel"></asp:Label> > 
                <asp:Label ID="lblCategoryName" runat="server" Text="Label" CssClass="listingLabel"></asp:Label>
                <br />
                <br />

                <asp:SqlDataSource ID="CategoryNameDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [product_id], [product_name], [image], [price] FROM [Product] WHERE ([category_id] = @category_id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="category_id" QueryStringField="category_id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

                <asp:DataList ID="ProductsDataList" runat="server" DataKeyField="product_id" DataSourceID="CategoryNameDataSource">
                    <ItemTemplate>
                        <asp:HyperLink ID="productHyperLink" runat="server" CssClass="productListingLink" NavigateUrl=' <%# "ProductItem.aspx?product_id=" 
                                 + Eval("product_id")%>' Text='<%# Eval("product_name") %>'></asp:HyperLink>
                        <br />
                        <asp:Image ID="imgProduct" runat="server"  ImageAlign="left" CssClass="productListingImage" ImageUrl='<%#"~/Images/Products/" + Eval("image") %>' />
                        <br />
                        <asp:Label ID="priceLabel" runat="server" CssClass="productListingPrice" Text='<%# Eval("price") %>' />
                        <br /><br />
                    </ItemTemplate>
                </asp:DataList>
                
            </div>
        </div>
    </div>
</asp:Content>

