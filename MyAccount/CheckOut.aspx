<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="CheckOut.aspx.cs" Inherits="CheckOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../CSS/CheckOut.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <h1>Please Verify Check Out Information:</h1>
            </div>
        </div>

        <hr />

        <div class="row">
            <div class="col-xs-12 col-md-12">
               
                <div class="col-xs-12 col-md-8">
                    <div class="form-horizontal">
                        <fieldset>
                            <h2 style="text-align: center;">Shipping Address</h2> <br />
                            <div class="form-group">
                                <label for="street" class="col-md-3 control-label">Street</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="inputStreet" class="form-control" 
                                        placeholder="Enter street" 
                                        runat="server">
                                    </asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ErrorMessage="**Name required" 
                                        ControlToValidate="inputStreet" Font-Size="X-Small" Font-Bold="True" 
                                        CssClass="required_checkOut_info" Display="Dynamic"
                                        ValidationGroup="confirm_order">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="city" class="col-md-3 control-label">City</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="inputCity" class="form-control" 
                                        placeholder="Enter city" 
                                        runat="server">
                                    </asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ErrorMessage="**City required" 
                                        ControlToValidate="inputCity" Font-Size="X-Small" Font-Bold="True" 
                                        CssClass="required_checkOut_info" Display="Dynamic"
                                        ValidationGroup="confirm_order">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="state" class="col-md-3 control-label">State</label>
                                <div class="col-md-6">
                                    <asp:DropDownList class="form-control" 
                                        ID="ddlStates" name="States"
                                        CSSClass="form-control select_state"
                                        runat="server">
                                        <asp:ListItem Value="AL">Alabama</asp:ListItem>
	                                        <asp:ListItem Value="AK">Alaska</asp:ListItem>
	                                        <asp:ListItem Value="AZ">Arizona</asp:ListItem>
	                                        <asp:ListItem Value="AR">Arkansas</asp:ListItem>
	                                        <asp:ListItem Value="CA">California</asp:ListItem>
	                                        <asp:ListItem Value="CO">Colorado</asp:ListItem>
	                                        <asp:ListItem Value="CT">Connecticut</asp:ListItem>
	                                        <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
	                                        <asp:ListItem Value="DE">Delaware</asp:ListItem>
	                                        <asp:ListItem Value="FL">Florida</asp:ListItem>
	                                        <asp:ListItem Value="GA">Georgia</asp:ListItem>
	                                        <asp:ListItem Value="HI">Hawaii</asp:ListItem>
	                                        <asp:ListItem Value="ID">Idaho</asp:ListItem>
	                                        <asp:ListItem Value="IL">Illinois</asp:ListItem>
	                                        <asp:ListItem Value="IN">Indiana</asp:ListItem>
	                                        <asp:ListItem Value="IA">Iowa</asp:ListItem>
	                                        <asp:ListItem Value="KS">Kansas</asp:ListItem>
	                                        <asp:ListItem Value="KY">Kentucky</asp:ListItem>
	                                        <asp:ListItem Value="LA">Louisiana</asp:ListItem>
	                                        <asp:ListItem Value="ME">Maine</asp:ListItem>
	                                        <asp:ListItem Value="MD">Maryland</asp:ListItem>
	                                        <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
	                                        <asp:ListItem Value="MI">Michigan</asp:ListItem>
	                                        <asp:ListItem Value="MN">Minnesota</asp:ListItem>
	                                        <asp:ListItem Value="MS">Mississippi</asp:ListItem>
	                                        <asp:ListItem Value="MO">Missouri</asp:ListItem>
	                                        <asp:ListItem Value="MT">Montana</asp:ListItem>
	                                        <asp:ListItem Value="NE">Nebraska</asp:ListItem>
	                                        <asp:ListItem Value="NV">Nevada</asp:ListItem>
	                                        <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
	                                        <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
	                                        <asp:ListItem Value="NM">New Mexico</asp:ListItem>
	                                        <asp:ListItem Value="NY">New York</asp:ListItem>
	                                        <asp:ListItem Value="NC">North Carolina</asp:ListItem>
	                                        <asp:ListItem Value="ND">North Dakota</asp:ListItem>
	                                        <asp:ListItem Value="OH">Ohio</asp:ListItem>
	                                        <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
	                                        <asp:ListItem Value="OR">Oregon</asp:ListItem>
	                                        <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
	                                        <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
	                                        <asp:ListItem Value="SC">South Carolina</asp:ListItem>
	                                        <asp:ListItem Value="SD">South Dakota</asp:ListItem>
	                                        <asp:ListItem Value="TN">Tennessee</asp:ListItem>
	                                        <asp:ListItem Value="TX">Texas</asp:ListItem>
	                                        <asp:ListItem Value="UT">Utah</asp:ListItem>
	                                        <asp:ListItem Value="VT">Vermont</asp:ListItem>
	                                        <asp:ListItem Value="VA">Virginia</asp:ListItem>
	                                        <asp:ListItem Value="WA">Washington</asp:ListItem>
	                                        <asp:ListItem Value="WV">West Virginia</asp:ListItem>
	                                        <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
	                                        <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="city" class="col-md-3 control-label">Zip Code</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="inputZipCode" class="form-control" 
                                        placeholder="Enter zip code" 
                                        runat="server">
                                    </asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ErrorMessage="**Zip code required" 
                                        ControlToValidate="inputZipCode" Font-Size="X-Small" Font-Bold="True" 
                                        CssClass="required_checkOut_info" Display="Dynamic"
                                        ValidationGroup="confirm_order">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>

            </div>
        </div>

        <hr />

        <div class="row">
            <div class="col-xs-12 col-md-12">
                <div class="col-xs-12 col-md-8">
                    <h2 style="text-align: center;">Select Shipping Method</h2>
                    <div class="form-group">
                        <label for="mailDelivery" class="col-md-3 control-label"></label>
                        <div class="col-md-6">
                            <asp:DropDownList class="form-control" 
                                ID="ddlMailDelivery" name="mailDelivery"
                                CSSClass="form-control select_mail_delivery"
                                runat="server">
                                <asp:ListItem>USPS</asp:ListItem>
                                <asp:ListItem>UPS Ground</asp:ListItem>
                                <asp:ListItem>UPS Next Day Delivery</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <hr />

        <div class="row">
            <div class="col-xs-12 col-md-12">
                
                <div class="col-xs-12 col-md-8">
                    <div class="form-horizontal">
                        <fieldset>
                            <h2 style="text-align: center;">Credit Card Information</h2> <br />
                            <div class="form-group">
                                <label for="inputName" class="col-md-3 control-label">Name on card</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="inputName" class="form-control" 
                                        placeholder="Enter name" 
                                        runat="server">
                                    </asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <asp:RequiredFieldValidator ID="RequiredNameFieldValidator" runat="server" 
                                        ErrorMessage="**Name required" 
                                        ControlToValidate="inputName" Font-Size="X-Small" Font-Bold="True" 
                                        CssClass="required_checkOut_info" Display="Dynamic"
                                        ValidationGroup="confirm_order">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputCCNumber" class="col-md-3 control-label">Credit Card #</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="inputCCNumber" class="form-control" 
                                        placeholder="CC Number - only digits" 
                                        runat="server">
                                    </asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <asp:RequiredFieldValidator ID="RequiredCCNumberFieldValidator" runat="server" 
                                        ErrorMessage="**Credit Card Number required for purchase" 
                                        ControlToValidate="inputCCNumber" Font-Size="X-Small" Font-Bold="True" 
                                        CssClass="required_checkOut_info" Display="Dynamic"
                                        ValidationGroup="confirm_order">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionCCNumberFieldValidator1" 
                                        runat="server" ErrorMessage="**Enter valid CC Number (Must be 16 digits long)"
                                        ValidationExpression="^[0-9]{16}$" ControlToValidate="inputCCNumber"
                                        Font-Bold="True" CSSClass="required_checkOut_info" 
                                        ValidationGroup="confirm_order" Font-Size="X-Small">
                                    </asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputCCV" class="col-md-3 control-label">Security Code</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="inputCCV" class="form-control"
                                        placeholder="3 digits on back of card"
                                        runat="server">
                                    </asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <asp:RequiredFieldValidator ID="RequiredCCVFieldValidator" runat="server" 
                                        ErrorMessage="**CCV Number required" 
                                        ControlToValidate="inputCCV" Font-Size="X-Small" Font-Bold="True" 
                                        CssClass="required_checkOut_info" Display="Dynamic" 
                                        ValidationGroup="confirm_order">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                        ErrorMessage="**Enter valid CCV (Must be 3 digits long)"
                                        ValidationExpression="^[0-9]{3}$" ControlToValidate="inputCCV"
                                        Font-Bold="True" CSSClass="required_checkOut_info" 
                                        ValidationGroup="confirm_order" Font-Size="X-Small">
                                    </asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputExpDate" class="col-md-3 control-label">Exp Date</label>
                                <div class="col-md-3">
                                    <asp:DropDownList class="form-control" 
                                        ID="ddlSelectExpMonth" name="CCMonth"
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
                                <div class="col-md-3">
                                    <asp:DropDownList class="form-control" 
                                        ID="ddlSelectExpYear" name="CCYear"
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
                                <div class="col-xs-12 col-md-1 col-md-offset-1">
                                    <asp:Button ID="btnBackToShoppingCart" runat="server"
                                        class="btn btn-default back_to_shoppingcart_btn"
                                        Text="Back to Shopping Cart" PostBackUrl="~/Cart.aspx">
                                    </asp:Button>
                                </div>
                                <div class="col-xs-12 col-md-1 col-md-offset-4">
                                    <asp:Button ID="btnConfirmOrder" runat="server"
                                        class="btn btn-primary confirm_order_btn"
                                        Text="Confirm Order" PostBackUrl="~/MyAccount/OrderVerificationPage.aspx" 
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

    </div>


</asp:Content>

