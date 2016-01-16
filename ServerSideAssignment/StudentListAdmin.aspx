<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="StudentListAdmin.aspx.vb" Inherits="ServerSideAssignment.StudentListAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Records Administration</title>
    <!--bootstrap-->
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!---end bootstrap-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="StudentGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name"></asp:BoundField>
                <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name"></asp:BoundField>
                <asp:BoundField DataField="email" HeaderText="Email" ReadOnly="True" SortExpression="email"></asp:BoundField>
                <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender"></asp:BoundField>
                <asp:BoundField DataField="date_of_birth" HeaderText="Date of Birth" SortExpression="date_of_birth"></asp:BoundField>
                <asp:BoundField DataField="specialisation" HeaderText="Specialisation" SortExpression="specialisation"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:myConnectionString %>' DeleteCommand="delete from registered_exam where email = @email;DELETE FROM [students] WHERE [email] = @email" InsertCommand="INSERT INTO [students] ([first_name], [last_name], [email], [gender], [date_of_birth], [specialisation]) VALUES (@first_name, @last_name, @email, @gender, @date_of_birth, @specialisation)" SelectCommand="SELECT [first_name], [last_name], [email], [gender], [date_of_birth], [specialisation] FROM [students]" UpdateCommand="UPDATE [students] SET [first_name] = @first_name, [last_name] = @last_name, [gender] = @gender, [date_of_birth] = @date_of_birth, [specialisation] = @specialisation WHERE [email] = @email">
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
