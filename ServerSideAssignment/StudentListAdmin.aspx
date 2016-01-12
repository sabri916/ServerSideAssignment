<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="StudentListAdmin.aspx.vb" Inherits="ServerSideAssignment.StudentListAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="student_list_grid" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                <asp:BoundField DataField="s_password" HeaderText="s_password" SortExpression="s_password" />
                <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="date_of_birth" HeaderText="date_of_birth" SortExpression="date_of_birth" />
                <asp:BoundField DataField="specialisation" HeaderText="specialisation" SortExpression="specialisation" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:examDBConnectionString %>" SelectCommand="SELECT * FROM [students]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
