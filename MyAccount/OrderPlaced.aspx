<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="OrderPlaced.aspx.cs" Inherits="OrderPlaced" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <h1>Thank you for your order!</h1>
            </div>
        </div>

        <hr />

        <div class="row">
            <div class="col-xs-12 col-md-12">
                <h2>Shipping to the following address</h2>
                <asp:Label ID="lblAddressFromOrderVerificationPage" runat="server"
                    CSSClass="label_text"></asp:Label>
            </div>
        </div>

    </div>
</asp:Content>

