<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="MyAccount_ChangePassword" %>

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
            <h1>The Halloween Store - Your Account</h1>
            <p>
                <asp:ChangePassword ID="ChangePassword1" runat="server" 
                    CancelDestinationPageUrl="MyAccount.aspx" 
                    ContinueDestinationPageUrl="MyAccount.aspx">
                </asp:ChangePassword>
            </p>
        </div>
    </div>
    </form>
</body>
</html>
