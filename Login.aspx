<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Login</title>
        <link href="Main.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
    <div id="page">
        <div id="main">
            <p>
                <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="207px" Width="880px">
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="1.1em" ForeColor="#284775" />
                    <TextBoxStyle Font-Size="0.8em" />
                    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="1.4em" ForeColor="White" />
                </asp:Login>
            </p>
            <p>
                Forgot your password?&nbsp;<asp:HyperLink ID="HyperLink1" 
                    runat="server" NavigateUrl="~/PasswordRecovery.aspx">Click here</asp:HyperLink>
                <br />
                Need to create a new account?
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/CreateUser.aspx">Click here</asp:HyperLink>
            </p>
        </div>
    </div>
</body>
</html>
</asp:Content>

