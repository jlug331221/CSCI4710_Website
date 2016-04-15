<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="CheckOut.aspx.cs" Inherits="CheckOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="CSS/CheckOut.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <h1>Please fill out credit card information:</h1>
            </div>
        </div>

        <hr />

        <div class="row">
            <div class="col-xs-12 col-md-12">
                
                <div class="form-horizontal">
                    <fieldset>
                        <div class="form-group">
                            <label for="inputName" class="col-md-3 control-label">Name as appears on card</label>
                            <div class="col-md-4">
                                <asp:TextBox ID="inputName" class="form-control" 
                                    placeholder="Enter name" 
                                    runat="server">
                                </asp:TextBox>
                            </div>
                            <div class="col-md-5">
                                <asp:RequiredFieldValidator ID="RequiredNameFieldValidator" runat="server" 
                                    ErrorMessage="**Name required" 
                                    ControlToValidate="inputName" Font-Size="Larger" Font-Bold="True" 
                                    CssClass="required_checkOut_info" Display="Dynamic"
                                    ValidationGroup="confirm_order">
                                </asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputCCNumber" class="col-md-3 control-label">Credit Card #</label>
                            <div class="col-md-4">
                                <asp:TextBox ID="inputCCNumber" class="form-control" 
                                    placeholder="CC Number - only digits" 
                                    runat="server">
                                </asp:TextBox>
                            </div>
                            <div class="col-md-5">
                                <asp:RequiredFieldValidator ID="RequiredCCNumberFieldValidator" runat="server" 
                                    ErrorMessage="**Credit Card Number required" 
                                    ControlToValidate="inputCCNumber" Font-Size="Larger" Font-Bold="True" 
                                    CssClass="required_checkOut_info" Display="Dynamic"
                                    ValidationGroup="confirm_order">
                                </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionCCNumberFieldValidator1" 
                                    runat="server" ErrorMessage="**Enter valid CC Number (Must be 16 digits long)"
                                    ValidationExpression="^[0-9]{16}$" ControlToValidate="inputCCNumber"
                                    Font-Bold="True" CSSClass="required_checkOut_info" 
                                    ValidationGroup="confirm_order">
                                </asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputCCV" class="col-md-3 control-label">Security Code</label>
                            <div class="col-md-4">
                                <asp:TextBox ID="inputCCV" class="form-control"
                                    placeholder="3 digits on back of card"
                                    runat="server">
                                </asp:TextBox>
                            </div>
                            <div class="col-md-5">
                                <asp:RequiredFieldValidator ID="RequiredCCVFieldValidator" runat="server" 
                                    ErrorMessage="**CCV Number required" 
                                    ControlToValidate="inputCCV" Font-Size="Larger" Font-Bold="True" 
                                    CssClass="required_checkOut_info" Display="Dynamic" 
                                    ValidationGroup="confirm_order">
                                </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ErrorMessage="**Enter valid CCV (Must be 3 digits long)"
                                    ValidationExpression="^[0-9]{3}$" ControlToValidate="inputCCV"
                                    Font-Bold="True" CSSClass="required_checkOut_info" 
                                    ValidationGroup="confirm_order">
                                </asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputExpDate" class="col-md-3 control-label">Exp Date</label>
                            <div class="col-md-2">
                                <asp:DropDownList class="form-control" 
                                    id="selectMonth" name="CCMonth"
                                    runat="server">
                                    <asp:ListItem>01</asp:ListItem>
                                    <asp:ListItem>02</asp:ListItem>
                                    <asp:ListItem>03</asp:ListItem>
                                    <asp:ListItem>04</asp:ListItem>
                                    <asp:ListItem>05</asp:ListItem>
                                    <asp:ListItem>06</asp:ListItem>
                                    <asp:ListItem>07</asp:ListItem>
                                    <asp:ListItem>08</asp:ListItem>
                                    <asp:ListItem>09</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-2">
                                <asp:DropDownList class="form-control" 
                                    id="selectYear" name="CCYear"
                                    runat="server">
                                    <asp:ListItem>2016</asp:ListItem>
                                    <asp:ListItem>2017</asp:ListItem>
                                    <asp:ListItem>2018</asp:ListItem>
                                    <asp:ListItem>2019</asp:ListItem>
                                    <asp:ListItem>2020</asp:ListItem>
                                    <asp:ListItem>2021</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <br />
                        <div class="form-group">
                            <div class="col-xs-12 col-md-1 col-md-offset-2">
                                <asp:Button ID="btnContinue" runat="server"
                                    class="btn btn-default back_to_shoppingcart_btn"
                                    Text="Back to Shopping Cart" PostBackUrl="~/Cart.aspx"></asp:Button>
                            </div>
                            <div class="col-xs-12 col-md-1 col-md-offset-2">
                                <asp:Button ID="btnConfirmOrder" runat="server"
                                    class="btn btn-primary confirm_order_btn"
                                    Text="Confirm Order" PostBackUrl="~/OrderVerificationPage.aspx" 
                                    CssClass="btn btn-primary CheckOut_confirm_order_btn"
                                    ValidationGroup="confirm_order">
                                </asp:Button>
                            </div>
                        </div>
                    </fieldset>
                </div>
                        
            </div>
        </div>

    </div>


</asp:Content>

