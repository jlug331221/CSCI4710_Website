<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="OrderVerificationPage.aspx.cs" Inherits="VerificationPage" %>

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
                <!--<asp:Repeater ID="rptCartItems" runat="server">
                    <HeaderTemplate><table style="width: 100%" align="center"></HeaderTemplate>
                    <ItemTemplate>
                    <tr>
                        <td><strong>Product <%# //Container.ItemIndex + 1 %>:</strong></td>
                        <td><%# //Container.DataItem %></td>
                    </tr>
                    </ItemTemplate>
                    <FooterTemplate></table></FooterTemplate>
                </asp:Repeater>-->
            </div>
        </div>
        
    </div>
</asp:Content>

