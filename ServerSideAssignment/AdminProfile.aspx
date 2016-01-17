<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AdminProfile.aspx.vb" Inherits="ServerSideAssignment.AdminProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--bootstrap-->
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!---end bootstrap-->

    <script runat="server">

        Sub logout(sender As Object, e As EventArgs)
            Session.Abandon()
            Response.Redirect("Home.aspx")
        End Sub
    </script>

    <title>Profile - Exam Registration System</title>
</head>
<body>
    <form id="form1" runat="server">
       <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Exam Registration System</a>
            </div>
            <div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Admin Profile</a></li>
                    <li><a href="AdminExamManagement.aspx">Exam Management</a></li>
                    <li><a href="StudentListAdmin.aspx">Student Management</a></li> 
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="divider-vertical"></li>
                    <li><a href="RegistrationPage.aspx"><span class="glyphicon glyphicon-user"></span>  Add Student</a></li>
                    <li class="divider-vertical"></li>
                    <li><a href="Rules.aspx">Rules & Regulations</a></li>
                    <li class="divider-vertical"></li>
                    <li><a id="logout_link" runat="server" onServerClick="logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="row">
            <div class="md-2"></div>
                <div class="col-md-8">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowEditButton="True"></asp:CommandField>
                        <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name"></asp:BoundField>
                        <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name"></asp:BoundField>
                        <asp:BoundField DataField="email" HeaderText="Email" ReadOnly="True" SortExpression="email"></asp:BoundField>
                        <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender"></asp:BoundField>
                        <asp:BoundField DataField="date_of_birth" HeaderText="Date of Birth" SortExpression="date_of_birth"></asp:BoundField>
                        <asp:BoundField DataField="specialisation" HeaderText="Specialisation" SortExpression="specialisation"></asp:BoundField>
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
            <div class="col-md-2"></div>
            </div>
    </div>
    </form>
</body>
</html>
