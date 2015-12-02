<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RegistrationPage.aspx.vb" Inherits="ServerSideAssignment.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:Label ID="student_id_label" runat="server" Text="Student ID"></asp:Label>
        <asp:TextBox ID="student_id_box" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="password_label" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="password_box" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="password_label2" runat="server" Text="Verify Password"></asp:Label>
        <asp:TextBox ID="password_box2" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="email_label" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="specialisation_label" runat="server" Text="Specialisation"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Text="Specialisation" Value="0"></asp:ListItem>
            <asp:ListItem Text="Computer Science" Value="1"></asp:ListItem>
            <asp:ListItem Text="Information Systems" Value="2"></asp:ListItem>
            <asp:ListItem Text="Multimedia" Value="3"></asp:ListItem>
        </asp:DropDownList>
        <br />

        <asp:Button ID="register_button" runat="server" Text="Register" />
    </div>
    </form>
</body>
</html>
