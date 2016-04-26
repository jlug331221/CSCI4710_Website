<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="MyAccount_MyAccount" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Chapter 19: Authentication</title>
    <link href="../Main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="page">
        <div id="main">
            <h1>East Coast Jeeps - My Account</h1>
            <p>(Only authenticated users can access this page.)</p>
            <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="ChangePassword.aspx">Change Password</asp:HyperLink>
            </p>
            <p>
                <asp:HyperLink ID="HyperLink2" runat="server" 
                    NavigateUrl="UnderConstruction.aspx">Track Packages</asp:HyperLink>
            </p>
            <p>
                <asp:HyperLink ID="HyperLink3" runat="server" 
                    NavigateUrl="UnderConstruction.aspx">Change Billing Address</asp:HyperLink>
            </p>
            <p>
                <asp:HyperLink ID="HyperLink4" runat="server" 
                    NavigateUrl="UnderConstruction.aspx">Change Shipping Address</asp:HyperLink>
            </p>
            <p>
                <asp:HyperLink ID="HyperLink5" runat="server" 
                    NavigateUrl="UnderConstruction.aspx">Change Preferences</asp:HyperLink>
            </p>
            <p>
                <asp:LoginName ID="LoginName1" runat="server" 
                    FormatString="You are logged in as: {0}" /><br />
                <asp:LoginStatus ID="LoginStatus1" runat="server" />
            </p>
        </div>
    </div>
    </form>
</body>
</html>
