<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="ProductsMaintenance.aspx.cs" Inherits="Maintenance_ProductsMaintenance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../CSS/ProductMaintenance.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <h1>Product Maintenance</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-md-12">
            <asp:DetailsView ID="DetailsView1" runat="server"
            DataSourceID="SqlDataSource2"  DataKeyNames="product_id"
            Height="50px" Width="100%" AutoGenerateRows="False" 
            BackColor="White" BorderColor="White" BorderStyle="Ridge" 
            BorderWidth="2px" CellPadding="3" CellSpacing="1" 
            GridLines="None" onitemdeleted="DetailsView1_ItemDeleted" 
              onitemdeleting="DetailsView1_ItemDeleting" 
              oniteminserted="DetailsView1_ItemInserted" 
              onitemupdated="DetailsView1_ItemUpdated">
          <Fields>
            <asp:TemplateField HeaderText="Product ID:">
              <ItemTemplate>
                <asp:Label ID="Label4" runat="server"
                    Text='<%# Bind("product_id") %>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                <asp:Label ID="Label1" runat="server"
                    Text='<%# Eval("product_id") %>'></asp:Label>
              </EditItemTemplate>
              <InsertItemTemplate>
                <asp:TextBox ID="txtID" runat="server"
                    Text='<%# Bind("product_id") %>' Width="100px"
                    MaxLength="10">
                </asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtID" 
                    ErrorMessage="Product ID is a required field.">*
                </asp:RequiredFieldValidator>
              </InsertItemTemplate>
              <HeaderStyle HorizontalAlign="Left" Width="130px" />
              <ItemStyle Width="220px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name:">
              <ItemTemplate>
                <asp:Label ID="Label8" runat="server"
                    Text='<%# Bind("product_name") %>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                <asp:TextBox ID="txtName" runat="server"
                    Text='<%# Bind("product_name") %>' Width="200px" MaxLength="50">
                </asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtName" 
                    ErrorMessage="Name is a required field.">*
                </asp:RequiredFieldValidator>
              </EditItemTemplate>
              <InsertItemTemplate>
                <asp:TextBox ID="txtName" runat="server"
                    Text='<%# Bind("product_name") %>' Width="200px" MaxLength="50">
                </asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtName"  
                    ErrorMessage="Name is a required field.">*
                </asp:RequiredFieldValidator>
              </InsertItemTemplate>
              <HeaderStyle HorizontalAlign="Left" Width="130px" />
              <ItemStyle Width="220px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description:">
              <ItemTemplate>
                <asp:Label ID="Label1" runat="server"
                    Text='<%# Bind("description") %>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                <asp:TextBox ID="txtShortDescription" runat="server" 
                    Text='<%# Bind("description") %>'
                    Width="200px" MaxLength="200">
                </asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtDescription"
                    ErrorMessage="Description is a required field.">*
                </asp:RequiredFieldValidator>
              </EditItemTemplate>
              <InsertItemTemplate>
                <asp:TextBox ID="txtDescription" runat="server" 
                    Text='<%# Bind("description") %>' Width="200px" 
                    MaxLength="200">
                </asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                    runat="server" ControlToValidate="txtDescription"
                    ErrorMessage="Description is a required field.">*
                </asp:RequiredFieldValidator>
              </InsertItemTemplate>
              <HeaderStyle HorizontalAlign="Left" Width="130px" />
              <ItemStyle Width="220px" />
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Category:">
              <ItemTemplate>
                <asp:Label ID="Label3" runat="server"
                    Text='<%# Bind("category_id") %>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                <asp:DropDownList ID="ddlCategory" runat="server"
                    DataSourceID="SqlDataSource3" 
                    DataTextField="category_name" DataValueField="category_id" 
                    SelectedValue='<%# Bind("category_id") %>' Width="130px">
                </asp:DropDownList>
              </EditItemTemplate>
              <InsertItemTemplate>
                <asp:DropDownList ID="ddlCategory" runat="server"
                    DataSourceID="SqlDataSource3" 
                    DataTextField="category_name" DataValueField="category_id" 
                    SelectedValue='<%# Bind("category_id") %>' Width="130px">
                </asp:DropDownList>
              </InsertItemTemplate>
              <HeaderStyle HorizontalAlign="Left" Width="130px" />
              <ItemStyle Width="220px" />
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Brand:">
            <ItemTemplate>
            <asp:Label ID="Label3" runat="server"
                Text='<%# Bind("brand_id") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:DropDownList ID="ddlBrand" runat="server"
                DataSourceID="SqlDataSource4" 
                DataTextField="brand_name" DataValueField="brand_id" 
                SelectedValue='<%# Bind("brand_id") %>' Width="130px">
            </asp:DropDownList>
            </EditItemTemplate>
            <InsertItemTemplate>
            <asp:DropDownList ID="ddlBrand" runat="server"
                DataSourceID="SqlDataSource4" 
                DataTextField="brand_name" DataValueField="brand_id" 
                SelectedValue='<%# Bind("brand_id") %>' Width="130px">
            </asp:DropDownList>
            </InsertItemTemplate>
            <HeaderStyle HorizontalAlign="Left" Width="130px" />
            <ItemStyle Width="220px" />
        </asp:TemplateField>

            <asp:TemplateField HeaderText="Image:">
              <ItemTemplate>
                <asp:Label ID="Label7" runat="server"
                    Text='<%# Bind("image") %>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                <asp:TextBox ID="txtImage" runat="server"
                    Text='<%# Bind("image") %>' Width="125px" MaxLength="30">
                </asp:TextBox>
              </EditItemTemplate>
              <InsertItemTemplate>
                <asp:TextBox ID="txtImage" runat="server"
                    Text='<%# Bind("image") %>' Width="125px" MaxLength="30">
                </asp:TextBox>
              </InsertItemTemplate>
              <HeaderStyle HorizontalAlign="Left" Width="130px" />
              <ItemStyle Width="220px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price:">
              <ItemTemplate>
                <asp:Label ID="Label5" runat="server"
                    Text='<%# Bind("price", "{0:c}") %>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                <asp:TextBox ID="txtUnitPrice" runat="server"
                    Text='<%# Bind("price") %>' Width="75px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                    runat="server" ControlToValidate="txtUnitPrice"
                    ErrorMessage="Unit Price is a required field.">*
                </asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="txtUnitPrice"  
                    ErrorMessage="Unit Price must be a decimal value
                    greater than 0." Operator="GreaterThan"
                    Type="Double" ValueToCompare="0.00">*</asp:CompareValidator>
              </EditItemTemplate>
              <InsertItemTemplate>
                <asp:TextBox ID="txtUnitPrice" runat="server" 
                    Text='<%# Bind("price") %>' Width="75px">
                </asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7"
                    runat="server" ControlToValidate="txtUnitPrice"
                    ErrorMessage="Unit Price is a required field.">*
                </asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ControlToValidate="txtUnitPrice" 
                    ErrorMessage="Unit price must be a decimal value
                    greater than 0." Operator="GreaterThan"
                    Type="Double" ValueToCompare="0">*</asp:CompareValidator>
              </InsertItemTemplate>
              <HeaderStyle HorizontalAlign="Left" Width="130px" />
              <ItemStyle Width="220px" />
            </asp:TemplateField>

               <asp:TemplateField HeaderText="Weight:">
              <ItemTemplate>
                <asp:Label ID="Label5" runat="server"
                    Text='<%# Bind("weight") %>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                <asp:TextBox ID="txtWeight" runat="server"
                    Text='<%# Bind("weight") %>' Width="75px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8"
                    runat="server" ControlToValidate="txtWeight"
                    ErrorMessage="Weight is a required field.">*
                </asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator3" runat="server" 
                    ControlToValidate="txtWeight"  
                    ErrorMessage="Weight must be a decimal value
                    greater than 0." Operator="GreaterThan"
                    Type="Double" ValueToCompare="0.00">*</asp:CompareValidator>
              </EditItemTemplate>
              <InsertItemTemplate>
                <asp:TextBox ID="txtWeight" runat="server" 
                    Text='<%# Bind("weight") %>' Width="75px">
                </asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9"
                    runat="server" ControlToValidate="txtWeight"
                    ErrorMessage="Weight is a required field.">*
                </asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator4" runat="server" 
                    ControlToValidate="txtWeight" 
                    ErrorMessage="Weight must be a decimal value
                    greater than 0." Operator="GreaterThan"
                    Type="Double" ValueToCompare="0">*</asp:CompareValidator>
              </InsertItemTemplate>
              <HeaderStyle HorizontalAlign="Left" Width="130px" />
              <ItemStyle Width="220px" />
            </asp:TemplateField>

            <asp:TemplateField HeaderText="On Hand:">
              <ItemTemplate>
                <asp:Label ID="Label6" runat="server"
                    Text='<%# Bind("prod_on_hand") %>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
                <asp:TextBox ID="txtOnHand" runat="server"
                    Text='<%# Bind("prod_on_hand") %>' Width="75px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10"
                    runat="server" ControlToValidate="txtOnHand"
                    ErrorMessage="On Hand is a required field.">*
                </asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator5" runat="server" 
                    ControlToValidate="txtOnHand" 
                    ErrorMessage="On Hand must be a positive integer."
                    Operator="GreaterThanEqual"
                    Type="Integer" ValueToCompare="0">*</asp:CompareValidator>
              </EditItemTemplate>
              <InsertItemTemplate>
                <asp:TextBox ID="txtOnHand" runat="server"
                    Text='<%# Bind("prod_on_hand") %>' Width="75px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11"
                    runat="server" ControlToValidate="txtOnHand"
                    ErrorMessage="On Hand is a required field.">*
                </asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator6" runat="server" 
                    ControlToValidate="txtOnHand" 
                    ErrorMessage="On Hand must be a positive integer."
                    Operator="GreaterThanEqual"
                    Type="Integer" ValueToCompare="0">*</asp:CompareValidator>
              </InsertItemTemplate>
              <HeaderStyle HorizontalAlign="Left" Width="130px" />
              <ItemStyle Width="220px" />
            </asp:TemplateField>
            <asp:CommandField ButtonType="Button" 
                ShowDeleteButton="True" 
                ShowEditButton="True"
                ShowInsertButton="True" />
          </Fields>
          <RowStyle BackColor="LightGray" ForeColor="Black" />
          <EditRowStyle BackColor="Gray" ForeColor="White" />
          <FooterStyle BackColor="LightGray" />
        </asp:DetailsView>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                    DataKeyNames="product_id" DataSourceID="SqlDataSource1"
                    AutoGenerateColumns="False" SelectedIndex="0"
                    CellPadding="4" GridLines="None" ForeColor="Black" Width="100%">
                    <Columns>
                    <asp:BoundField DataField="product_id" HeaderText="ID"
                        ReadOnly="True">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="75px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="product_name" HeaderText="Name">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="150px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="price" HeaderText="Price" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="95px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="brand_id" HeaderText="Brand" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="95px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="category_id" HeaderText="Category ID" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="95px" />
                    </asp:BoundField>
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                    </Columns>
                    <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="White" ForeColor="Black" />
                    <AlternatingRowStyle BackColor="LightGray" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#F46D11" ForeColor="White" />
                    <PagerStyle BackColor="Gray" ForeColor="White"
                        HorizontalAlign="Center" />
                </asp:GridView>
            </div>
        </div>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [product_id], [product_name], [price], [prod_on_hand], [brand_id], [description], [image], [category_id], [weight] FROM [Product]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Product] WHERE [product_id] = @original_product_id AND [product_name] = @original_product_name AND [price] = @original_price AND [prod_on_hand] = @original_prod_on_hand AND [brand_id] = @original_brand_id AND [description] = @original_description AND [image] = @original_image AND [category_id] = @original_category_id AND [weight] = @original_weight" 
            InsertCommand="INSERT INTO [Product] ([product_name], [price], [prod_on_hand], [brand_id], [description], [image], [category_id], [weight]) VALUES (@product_name, @price, @prod_on_hand, @brand_id, @description, @image, @category_id, @weight)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [product_id], [product_name], [price], [prod_on_hand], [brand_id], [description], [image], [category_id], [weight] FROM [Product] WHERE([product_id] = @product_id)" 
            UpdateCommand="UPDATE [Product] SET [product_name] = @product_name, [price] = @price, [prod_on_hand] = @prod_on_hand, [brand_id] = @brand_id, [description] = @description, [image] = @image, [category_id] = @category_id, [weight] = @weight WHERE [product_id] = @original_product_id AND [product_name] = @original_product_name AND [price] = @original_price AND [prod_on_hand] = @original_prod_on_hand AND [brand_id] = @original_brand_id AND [description] = @original_description AND [image] = @original_image AND [category_id] = @original_category_id AND [weight] = @original_weight">
            <DeleteParameters>
                <asp:Parameter Name="original_product_id" Type="Int32" />
                <asp:Parameter Name="original_product_name" Type="String" />
                <asp:Parameter Name="original_price" Type="Decimal" />
                <asp:Parameter Name="original_prod_on_hand" Type="Int32" />
                <asp:Parameter Name="original_brand_id" Type="Int32" />
                <asp:Parameter Name="original_description" Type="String" />
                <asp:Parameter Name="original_image" Type="String" />
                <asp:Parameter Name="original_category_id" Type="Int32" />
                <asp:Parameter Name="original_weight" Type="Double" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="product_name" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="prod_on_hand" Type="Int32" />
                <asp:Parameter Name="brand_id" Type="Int32" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="category_id" Type="Int32" />
                <asp:Parameter Name="weight" Type="Double" />
            </InsertParameters>
            <SelectParameters>
                  <asp:ControlParameter ControlID="GridView1" Name="product_id" 
                      PropertyName="SelectedValue" Type="String" />
              </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="product_name" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="prod_on_hand" Type="Int32" />
                <asp:Parameter Name="brand_id" Type="Int32" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="category_id" Type="Int32" />
                <asp:Parameter Name="weight" Type="Double" />
                <asp:Parameter Name="original_product_id" Type="Int32" />
                <asp:Parameter Name="original_product_name" Type="String" />
                <asp:Parameter Name="original_price" Type="Decimal" />
                <asp:Parameter Name="original_prod_on_hand" Type="Int32" />
                <asp:Parameter Name="original_brand_id" Type="Int32" />
                <asp:Parameter Name="original_description" Type="String" />
                <asp:Parameter Name="original_image" Type="String" />
                <asp:Parameter Name="original_category_id" Type="Int32" />
                <asp:Parameter Name="original_weight" Type="Double" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [category_id], [category_name] FROM [Category]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [brand_id], [brand_name] FROM [Brand]"></asp:SqlDataSource>
    
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
          HeaderText="Please correct the following errors:" CssClass="error" />
        <p>
          <asp:Label ID = "lblError" runat="server" EnableViewState="False" CssClass="error"></asp:Label>
        </p>
    </div>
</asp:Content>

