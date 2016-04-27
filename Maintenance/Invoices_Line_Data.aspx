<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="Invoices_Line_Data.aspx.cs" Inherits="Maintenance_Invoices_Line_Data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <h1>View Invoice Information</h1>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-12 col-md-12">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                    DataKeyNames="invoice_id" DataSourceID="SqlDataSource1"
                    AutoGenerateColumns="False" SelectedIndex="0"
                    CellPadding="4" GridLines="None" ForeColor="Black" Width="100%">
                    <Columns>
                    <asp:BoundField DataField="invoice_id" HeaderText="Invoice Id"
                        ReadOnly="True">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="75px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="invoice_date" HeaderText="Invoice Date">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="150px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="subtotal" HeaderText="Subtotal" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="95px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="shipping_method" HeaderText="Shipping Method" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="95px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="shipping_cost" HeaderText="Shipping Cost" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="95px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="sales_tax" HeaderText="Sales Tax" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="95px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="total" HeaderText="Total" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="95px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="credit_card_number" HeaderText="CC Number" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="95px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="card_exp_month" HeaderText="CC Exp Month" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="95px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="card_exp_year" HeaderText="CC Exp Year" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="95px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="UserId" HeaderText="User Id" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="95px" />
                    </asp:BoundField>
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                    </Columns>
                    <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="White" ForeColor="Black" />
                    <AlternatingRowStyle BackColor="LightGray" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#F46D11" ForeColor="White" />
                    <PagerStyle BackColor="Gray" 
                        ForeColor="White"
                        HorizontalAlign="Center" />
                </asp:GridView>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-12 col-md-12">
                <h1>View Line Items Information</h1>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-12 col-md-12">
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True"
                    DataKeyNames="line_id" DataSourceID="SqlDataSource2"
                    AutoGenerateColumns="False" SelectedIndex="0"
                    CellPadding="4" GridLines="None" ForeColor="Black" Width="75%">
                    <Columns>
                    <asp:BoundField DataField="line_id" HeaderText="Line Id"
                        ReadOnly="True">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="75px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="invoice_id" HeaderText="Invoice Id">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="150px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="product_id" HeaderText="Product Id" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="95px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="line_units" HeaderText="Line Units" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="95px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="line_price" HeaderText="Line Price" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="95px" />
                    </asp:BoundField>
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                    </Columns>
                    <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="White" ForeColor="Black" />
                    <AlternatingRowStyle BackColor="LightGray" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#F46D11" ForeColor="White" />
                    <PagerStyle BackColor="Gray" 
                        ForeColor="White"
                        HorizontalAlign="Center" />
                </asp:GridView>
            </div>
        </div>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [invoice_id], [invoice_date], [subtotal], [shipping_method], [shipping_cost], [sales_tax], [total], [credit_card_number], [card_exp_month], [card_exp_year], [UserId] FROM [Invoice]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [line_id], [invoice_id], [product_id], [line_units], [line_price] FROM [Line]">
    </asp:SqlDataSource>
</asp:Content>

