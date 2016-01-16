<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MyExams.aspx.vb" Inherits="ServerSideAssignment.MyExams" %>

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
    <title>My Exams</title>
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
                        <li><a href="#">Profile</a></li>
                        <li class="active"><a href="MyExams.aspx">My Exams</a></li>
                        <li><a href="studentExamRegistration.aspx">Exam Registration</a></li> 
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="divider-vertical"></li>
                        <li><a href="RegistrationPage.aspx">Rules & Regulations</a></li>
                        <li class="divider-vertical"></li>
                        <li><a id="logout_link" runat="server" onServerClick="logout">Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="exam_code" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:BoundField DataField="exam_code" HeaderText="Exam Code" ReadOnly="True" SortExpression="exam_code"></asp:BoundField>
                <asp:BoundField DataField="exam_title" HeaderText="exam_title" SortExpression="exam_title"></asp:BoundField>
                <asp:BoundField DataField="exam_description" HeaderText="exam_description" SortExpression="exam_description"></asp:BoundField>
                <asp:BoundField DataField="exam_specialisation" HeaderText="exam_specialisation" SortExpression="exam_specialisation"></asp:BoundField>
                <asp:BoundField DataField="e_date" HeaderText="e_date" SortExpression="e_date"></asp:BoundField>
                <asp:BoundField DataField="e_time" HeaderText="e_time" SortExpression="e_time"></asp:BoundField>
                <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration"></asp:BoundField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="delete_registered_exams" runat="server"
                            CommandName="deleteRegisteredExamCommand"
                            CommandArgument="<%# CType(Container, GridViewRow).RowIndex %>"
                            Text="Delete" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
