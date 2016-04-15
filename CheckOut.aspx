<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="CheckOut.aspx.cs" Inherits="CheckOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <h1>Please fill out credit card information:</h1>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-12 col-md-6">
                <div class="form-horizontal">
                    <fieldset>
                        <div class="form-group">
                            <label for="inputName" class="col-md-5 control-label">Name as appears on card</label>
                            <div class="col-md-7">
                                <asp:TextBox ID="inputName" CssClass="form-control" placeholder="Name" runat="server"></asp:TextBox>
                                <!--<input type="text" class="form-control" id="inputName" placeholder="Name" />-->
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputCCNumber" class="col-md-5 control-label">Credit Card #</label>
                            <div class="col-md-7">
                                <input type="text" class="form-control" id="inputCCNumber" placeholder="XXXX-XXXX-XXXX-XXXX" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputCCV" class="col-md-5 control-label">Security Code</label>
                            <div class="col-md-7">
                                <input type="text" class="form-control" id="inputCCV" placeholder="3 digits on back of card" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputExpDate" class="col-md-5 control-label">Exp Date</label>
                            <div class="col-md-3">
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
                            <div class="col-md-3">
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
                            <div class="col-md-6">
                                <asp:Button ID="btnContinue" runat="server"
                                    class="btn btn-default continue_shopping_btn"
                                    text="Back to Shopping Cart" PostBackUrl="~/Cart.aspx">
                                </asp:Button>
                                <br />
                                <br />
                                <asp:Button ID="Button1" runat="server"
                                    class="btn btn-primary continue_shopping_btn"
                                    text="Confirm Order" PostBackUrl="#">
                                </asp:Button>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>

    </div>
</asp:Content>

