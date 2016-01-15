<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Profile.aspx.vb" Inherits="ServerSideAssignment.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowEditButton="True"></asp:CommandField>
                <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name"></asp:BoundField>
                <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name"></asp:BoundField>
                <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email"></asp:BoundField>
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender"></asp:BoundField>
                <asp:BoundField DataField="date_of_birth" HeaderText="date_of_birth" SortExpression="date_of_birth"></asp:BoundField>
                <asp:BoundField DataField="specialisation" HeaderText="specialisation" SortExpression="specialisation"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:myConnectionString %>' DeleteCommand="DELETE FROM [students] WHERE [email] = @email" InsertCommand="INSERT INTO [students] ([first_name], [last_name], [email], [gender], [date_of_birth], [specialisation]) VALUES (@first_name, @last_name, @email, @gender, @date_of_birth, @specialisation)" SelectCommand="SELECT [first_name], [last_name], [email], [gender], [date_of_birth], [specialisation] FROM [students] WHERE ([email] = @email)" UpdateCommand="UPDATE [students] SET [first_name] = @first_name, [last_name] = @last_name, [gender] = @gender, [date_of_birth] = @date_of_birth, [specialisation] = @specialisation WHERE [email] = @email">
            <DeleteParameters>
                <asp:Parameter Name="email" Type="String"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="first_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="last_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="email" Type="String"></asp:Parameter>
                <asp:Parameter Name="gender" Type="String"></asp:Parameter>
                <asp:Parameter DbType="Date" Name="date_of_birth"></asp:Parameter>
                <asp:Parameter Name="specialisation" Type="String"></asp:Parameter>
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter SessionField="email" Name="email" Type="String"></asp:SessionParameter>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="first_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="last_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="gender" Type="String"></asp:Parameter>
                <asp:Parameter DbType="Date" Name="date_of_birth"></asp:Parameter>
                <asp:Parameter Name="specialisation" Type="String"></asp:Parameter>
                <asp:Parameter Name="email" Type="String"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
