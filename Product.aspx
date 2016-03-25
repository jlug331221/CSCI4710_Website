<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="thumbnail">
                    <asp:Image ID="imgProduct" runat="server" Height="300" Width="500" ImageAlign="Middle" ImageUrl="~/Images/nav_system.jpg" />
                    <div class="caption-full">
                        <br />
                        <asp:Label ID="lblProductName" runat="server" Text="Product Name" CssClass="h4"></asp:Label>    
                        <asp:Label ID="lblProductPrice" runat="server" Text="$0.00" CssClass="h4 labelColor"></asp:Label>

                        <hr />

                        <div
                    </div>
                    
                </div>
            </div>
        </div>
    </div>




</asp:Content>

