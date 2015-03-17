<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show Tracker DB - Venue Login</title>
    <link href="ShowTrackerStyles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Show Tracker DB - Venue Login</h1>
        <p>To add venues or shows, you must first log in.</p>
        <table class="login">
            <tr>
                <td class="login">User Name</td>
                <td class="login">
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="login">Password</td>
                <td class="login"><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="login">
                    <asp:Button ID="btnLogin" runat="server" Text="Log In" OnClick="btnLogin_Click" />
                </td>
                <td class="login">
                    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <asp:LinkButton ID="lblRegister" runat="server" PostBackUrl="~/Register.aspx" OnClick="lblRegister_Click">Register</asp:LinkButton>
    </div>
    </form>
</body>
</html>