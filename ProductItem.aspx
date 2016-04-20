<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="ProductItem.aspx.cs" Inherits="ProductItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="CSS/ProductItem.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="thumbnail">
                    <asp:Image ID="imgProduct" runat="server"  ImageAlign="Middle" ImageUrl="~/Images/nav_system.jpg" CssClass="productImage" BorderStyle="Solid" BorderColor="#06A974" BorderWidth="3px" />
                    <div class="caption-full">
                        <br />
                        <asp:Label ID="lblProductName" runat="server" Text="Product Name" CssClass="h3"></asp:Label>    
                        &nbsp;
                        <asp:Label ID="lblProductPrice" runat="server" Text="$0.00" CssClass="h3 labelColor"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-7">
                <div>
                    <asp:Label ID="lblProductDescription" runat="server" Text="Product Description:" CssClass="h3"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="lblDescription" runat="server" Text="..."></asp:Label>
                </div>
                <br />
                <div>
                    <asp:Label ID="lblWeight" runat="server" Text="Weight (lbs): "></asp:Label>
                </div>
            </div>
            <div class="col-md-5">
                <div>
                    <asp:Image ID="imgBrand" runat="server" ImageUrl="~/Images/Brands/Alpine_Logo.jpg" CssClass="brandImage img-responsive center-block" BorderStyle="Solid" BorderColor="Black" />
                </div>
                <div>
                    <div class="center-block quantity"></div>
                        <asp:Label ID="lblQuantity" runat="server" Text="Enter Quantity"></asp:Label>
                        <asp:TextBox ID="txtQuantity" runat="server"  Width="40px" ValidationGroup="quantity" CssClass="txtQuantity"></asp:TextBox>&nbsp;
                        <asp:Button ID="btnAddToCart" runat="server" Text="Add To Cart" CssClass="btn btn-info" OnClick="btnAddToCart_Click" />
                        <br />
                        <asp:Label ID="lblQtyAlmostOut" runat="server" Text="Label"
                            CSSClass="validator"></asp:Label> <br />
                        <asp:Label ID="lblOnhand" runat="server" Text="Label"></asp:Label>
                    </div>
                    <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtQuantity" Display="Dynamic" 
                        ErrorMessage="Quantity is a required field." 
                        CssClass="validator" ValidationGroup="quantity">
                    </asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="txtQuantity" Display="Dynamic" 
                        MinimumValue="1" Type="Integer" 
                        CssClass="validator" ValidationGroup="quantity">
                    </asp:RangeValidator>
                </div>
            </div>
        </div>

    <asp:SqlDataSource ID="ProductDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [product_id], [product_name], [price], [prod_on_hand], [weight], [brand_image], [description], [image] FROM [Product] INNER JOIN [Brand] ON (Product.brand_id = Brand.brand_id) WHERE ([product_id] = @product_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="product_id" QueryStringField="product_id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>


</asp:Content>

