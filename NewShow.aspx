<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewShow.aspx.cs" Inherits="NewShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show Tracker Database - Add Show</title>
    <link href="ShowTrackerStyles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Show Tracker Database - Add Show</h1>
        <p>Add Your Show</p>
    <table>
        <tr>
            <td>Enter your show name</td>
            <td>
                <asp:TextBox ID="txtShowName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Enter show date</td>
            <td>
                <asp:TextBox ID="txtShowDate" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Enter show time</td>
            <td>
                <asp:TextBox ID="txtShowTime" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Enter ticket information</td>
            <td>
                <asp:TextBox ID="txtShowTicketInfo" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Enter artist start time</td>
            <td>
                <asp:TextBox ID="txtShowArtistStartTime" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Enter additional details</td>
            <td>
                <asp:TextBox ID="txtShowDetails" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnSaveShow" runat="server" Text="Save" OnClick="btnSaveShow_Click" /></td>
            <td>
                <asp:Label ID="lblResultShow" runat="server" Text=""></asp:Label> </td>
        </tr>
    </table>
    </div>
    <div>
        <h1>Show Tracker Database - Add Artist</h1>
        <p>Add Artist</p>
    <table>
        <tr>
            <td>Enter artist name</td>
            <td>
                <asp:TextBox ID="txtArtistName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Enter artist email</td>
            <td>
                <asp:TextBox ID="txtArtistEmail" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Enter artist Web page</td>
            <td>
                <asp:TextBox ID="txtArtistWebPage" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnSaveArtist" runat="server" Text="Save" OnClick="btnSaveArtist_Click" /></td>
            <td>
                <asp:Label ID="lblResultArtist" runat="server" Text=""></asp:Label> </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>

