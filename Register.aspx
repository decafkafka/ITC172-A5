<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show Tracker DB - Registration</title>
    <link href="ShowTrackerStyles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Show Tracker DB - Registration</h1>
    <table>
        <tr>
            <td>Venue Name</td>
            <td>
                <asp:TextBox ID="txtVenueName" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Venue Address</td>
            <td>
                <asp:TextBox ID="txtVenueAddress" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Venue City</td>
            <td>
                <asp:TextBox ID="txtVenueCity" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Venue State</td>
            <td>
                <asp:TextBox ID="txtVenueState" runat="server" MaxLength="2"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Venue Zip</td>
            <td>
                <asp:TextBox ID="txtVenueZip" runat="server" MaxLength="5"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Venue Phone</td>
            <td>
                <asp:TextBox ID="txtVenuePhone" runat="server" MaxLength="10"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Venue Email</td>
            <td>
                <asp:TextBox ID="txtVenueEmail" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Venue Web Page</td>
            <td>
                <asp:TextBox ID="txtVenueWebPage" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Venue Age Restriction</td>
            <td>
                <asp:TextBox ID="txtVenueAge" runat="server" MaxLength="2"></asp:TextBox></td>
        </tr>
         <tr>
            <td>User Name</td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password">
                </asp:TextBox></td>
        </tr>
         <tr>
            <td>Confirm Password</td>
            <td>
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password">
                </asp:TextBox></td>
        </tr>
         <tr>
            <td><asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /></td>
            <td>
                <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                </td>
        </tr>
    </table>
        <asp:LinkButton ID="lbLogin" runat="server" PostBackURL="~/Default.aspx">Log in</asp:LinkButton>
        <asp:RequiredFieldValidator ID="VenueNameValidator" ControlToValidate="txtVenueName" runat="server" ErrorMessage="Venue name is required" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="VenueAddressValidator" ControlToValidate="txtVenueAddress" runat="server" ErrorMessage="Address is required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="VenueCityValidator" ControlToValidate="txtVenueCity" runat="server" ErrorMessage="City is required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="VenueStateValidator" ControlToValidate="txtVenueState" runat="server" ErrorMessage="State is required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="VenueZipCodeValidator" ControlToValidate="txtVenueZip" runat="server" ErrorMessage="Zip code is required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="VenuePhoneValidator" ControlToValidate="txtVenuePhone" runat="server" ErrorMessage="Phone number is required"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="VenueEmailValidator" ControlToValidate="txtVenueEmail" runat="server" ErrorMessage="A valid email address is required" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="VenueLoginUserNameValidator" ControlToValidate="txtUserName" runat="server" ErrorMessage="User name is required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="VenueLoginPasswordPlainValidator" ControlToValidate="txtPassword" runat="server" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="VenueLoginConfirmValidator" ControlToValidate="txtConfirm" runat="server" ErrorMessage="Please confirm your password"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="PasswordCompare" ControlToValidate="txtPassword" ControlToCompare="txtConfirm" runat="server" ErrorMessage="Passwords don't match"></asp:CompareValidator>  </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>