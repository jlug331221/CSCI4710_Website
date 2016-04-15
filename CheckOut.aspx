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
                                    placeholder="XXXX-XXXX-XXXX-XXXX" 
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
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputExpDate" class="col-md-3 control-label">Exp Date</label>
                            <div class="col-md-2">
                                <select class="form-control" id="selectMonth">
                                    <option>01</option>
                                    <option>02</option>
                                    <option>03</option>
                                    <option>04</option>
                                    <option>05</option>
                                    <option>06</option>
                                    <option>07</option>
                                    <option>08</option>
                                    <option>09</option>
                                    <option>10</option>
                                    <option>11</option>
                                    <option>12</option>
                                </select>
                            </div>
                            <div class="col-md-2">
                                <select class="form-control" id="selectYear">
                                    <option>2016</option>
                                    <option>2017</option>
                                    <option>2018</option>
                                    <option>2019</option>
                                    <option>2020</option>
                                    <option>2021</option>
                                </select>
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

