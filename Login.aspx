<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Chapter 19: Authentication</title>
    <link href="Main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="page">
        <div id="main">
            <h1>Welcome to the Halloween Store</h1>
            <p>
                <asp:Login ID="Login1" runat="server">
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
    </form>
</body>
</html>
