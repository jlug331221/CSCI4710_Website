<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="OrderVerificationPage.aspx.cs" Inherits="VerificationPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../CSS/OrderVerification.css" rel="stylesheet" />
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

            <div class="col-xs-12">
                <h2>Credit Card Information</h2>
            </div>

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

            <br /><br />

            <div class="col-xs-12 col-md-12">
                <div class="row">
                    <div class="col-xs-2 col-md-1">
                        <h2><i class="fa fa-calendar" aria-hidden="true"></i></h2>
                    </div>
                    <div class="col-xs-10 col-md-11">
                        <h2>
                            Exp Date: <asp:Label ID="lblCCExpMonth" runat="server" CssClass="label_text"></asp:Label> 
                            | <asp:Label ID="lblCCExpYear" runat="server" CssClass="label_text"></asp:Label>
                        </h2>
                    </div>
                </div>
            </div>

            <br /><br />

            <div class="col-xs-12">
                <hr />
                <h2>Shipping Information</h2>
            </div>

            <div class="col-xs-12 col-md-12">
                <div class="row">
                    <div class="col-xs-2 col-md-1">
                        <h2><i class="fa fa-map-marker" aria-hidden="true"></i></h2>
                    </div>
                    <div class="col-xs-10 col-md-11">
                        <h2>
                            Street: <asp:Label ID="lblInputStreetFromChkOutPage" 
                                        runat="server" CssClass="label_text"></asp:Label>
                        </h2>
                    </div>
                </div>
            </div>

            <br /><br />

            <div class="col-xs-12 col-md-12">
                <div class="row">
                    <div class="col-xs-2 col-md-1">
                        <h2><i class="fa fa-map-marker" aria-hidden="true"></i></h2>
                    </div>
                    <div class="col-xs-10 col-md-11">
                        <h2>
                            City: <asp:Label ID="lblInputCityFromChkOutPage" 
                                        runat="server" CssClass="label_text"></asp:Label>
                        </h2>
                    </div>
                </div>
            </div>

            <br /><br />

            <div class="col-xs-12 col-md-12">
                <div class="row">
                    <div class="col-xs-2 col-md-1">
                        <h2><i class="fa fa-map-marker" aria-hidden="true"></i></h2>
                    </div>
                    <div class="col-xs-10 col-md-11">
                        <h2>
                            State: <asp:Label ID="lblSelectStateFromChkOutPage" 
                                        runat="server" CssClass="label_text"></asp:Label>
                        </h2>
                    </div>
                </div>
            </div>

            <br /><br />

            <div class="col-xs-12 col-md-12">
                <div class="row">
                    <div class="col-xs-2 col-md-1">
                        <h2><i class="fa fa-map-marker" aria-hidden="true"></i></h2>
                    </div>
                    <div class="col-xs-10 col-md-11">
                        <h2>
                            Zip Code: <asp:Label ID="lblZipCodeFromChkOutPage" 
                                        runat="server" CssClass="label_text"></asp:Label>
                        </h2>
                    </div>
                </div>
            </div>

            <br /><br />

            <div class="col-xs-12 col-md-12">
                <div class="row">
                    <div class="col-xs-2 col-md-1">
                        <h2><i class="fa fa-truck" aria-hidden="true"></i></h2>
                    </div>
                    <div class="col-xs-10 col-md-11">
                        <h2>
                            Selected Shipping: <asp:Label ID="lblSelectedShipping" 
                                        runat="server" CssClass="label_text"></asp:Label>
                        </h2>
                    </div>
                </div>
            </div>

        </div>

        <hr />
        
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <div class="row">
                    <asp:ListBox ID="lstItemsCart" runat="server"
                        class="lstCartItems" CssClass="lstCartItems"
                        DataKeyNames="product_id, prod_on_hand">
                    </asp:ListBox>
                </div>
            </div>

            <div class="col-xs-12 col-md-12"><hr /></div>

            <div class="col-xs-12">
                <h2>Cost Information</h2>
            </div>

            <div class="col-xs-12 col-md-12">
                <div class="row">
                    <div class="col-xs-2 col-md-1">
                        <h2><i class="fa fa-money" aria-hidden="true"></i></h2>
                    </div>
                    <div class="col-xs-10 col-md-11">
                        <h2>
                            Items: <asp:Label ID="lblItemsCost" 
                                        runat="server" CssClass="label_text"></asp:Label>
                        </h2>
                    </div>
                </div>
            </div>

            <div class="col-xs-12 col-md-12">
                <div class="row">
                    <div class="col-xs-2 col-md-1">
                        <h2><i class="fa fa-money" aria-hidden="true"></i></h2>
                    </div>
                    <div class="col-xs-10 col-md-11">
                        <h2>
                            Shipping Cost: <asp:Label ID="lblShippingCost" 
                                        runat="server" CssClass="label_text"></asp:Label>
                        </h2>
                    </div>
                </div>
            </div>

            <div class="col-xs-12 col-md-12">
                <div class="row">
                    <div class="col-xs-2 col-md-1">
                        <h2><i class="fa fa-money" aria-hidden="true"></i></h2>
                    </div>
                    <div class="col-xs-10 col-md-11">
                        <h2>
                            Subtotal before Tax: <asp:Label ID="lblSubtotal" 
                                        runat="server" CssClass="label_text"></asp:Label>
                        </h2>
                    </div>
                </div>
            </div>

            <div class="col-xs-12 col-md-12">
                <div class="row">
                    <div class="col-xs-2 col-md-1">
                        <h2><i class="fa fa-money" aria-hidden="true"></i></h2>
                    </div>
                    <div class="col-xs-10 col-md-11">
                        <h2>
                            Tax: <asp:Label ID="lblTax" 
                                        runat="server" CssClass="label_text"></asp:Label>
                        </h2>
                    </div>
                </div>
            </div>

            <div class="col-xs-12 col-md-12">
                <div class="row">
                    <div class="col-xs-2 col-md-1">
                        <h2><i class="fa fa-money" aria-hidden="true"></i></h2>
                    </div>
                    <div class="col-xs-10 col-md-11">
                        <h2>
                            Total: <asp:Label ID="lblTotal" 
                                        runat="server" CssClass="label_text"></asp:Label>
                        </h2>
                    </div>
                </div>
            </div>

            <div class="col-xs-12 col-md-12"><hr /></div>

            <div class="col-xs-12 col-md-12">
                <div class="row">
                    <asp:Button ID="btnSubmitOrder" runat="server"
                        class="btn btn-primary submit_order_btn"
                        Text="Submit Order" 
                        CssClass="btn btn-primary submit_order_btn" 
                        OnClick="btnSubmitOrder_Click">
                    </asp:Button>
                </div>
            </div>
        </div>
            
        <asp:SqlDataSource ID="SQLUpdateDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [product_id], [prod_on_hand] FROM [Product]" 
            UpdateCommand="UPDATE [Product] SET [prod_on_hand] = @prod_on_hand WHERE [product_id] = @product_id">
            <DeleteParameters>
                <asp:Parameter Name="product_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="prod_on_hand" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="prod_on_hand" Type="Int32" />
                <asp:Parameter Name="product_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            InsertCommand="INSERT INTO [Invoice] ([invoice_date], [subtotal], [shipping_method], [shipping_cost], [sales_tax], [total], [credit_card_number], [card_exp_month], [UserId], [card_exp_year]) VALUES (@invoice_date, @subtotal, @shipping_method, @shipping_cost, @sales_tax, @total, @credit_card_number, @card_exp_month, @UserId, @card_exp_year)">    
            <InsertParameters>
                <asp:Parameter Name="invoice_date" Type="DateTime" />
                <asp:Parameter Name="subtotal" Type="Decimal" />
                <asp:Parameter Name="shipping_method" Type="String" />
                <asp:Parameter Name="shipping_cost" Type="Decimal" />
                <asp:Parameter Name="sales_tax" Type="Decimal" />
                <asp:Parameter Name="total" Type="Decimal" />
                <asp:Parameter Name="credit_card_number" Type="String" />
                <asp:Parameter Name="card_exp_month" Type="String" />
                <asp:Parameter Name="UserId" />
                <asp:Parameter Name="card_exp_year" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT MAX([invoice_id]) FROM [Invoice] WHERE ([UserId] = @UserId)">
            <SelectParameters>
                <asp:Parameter Name="UserId" />
            </SelectParameters>
        </asp:SqlDataSource>
        
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            InsertCommand="INSERT INTO [Line] ([invoice_id], [product_id], [line_units], [line_price]) VALUES (@invoice_id, @product_id, @line_units, @line_price)">
            
            <InsertParameters>
                <asp:Parameter Name="invoice_id" Type="Int32" />
                <asp:Parameter Name="product_id" Type="Int32" />
                <asp:Parameter Name="line_units" Type="Int32" />
                <asp:Parameter Name="line_price" Type="Decimal" />
            </InsertParameters>
        </asp:SqlDataSource>
    </div>
    
</asp:Content>

