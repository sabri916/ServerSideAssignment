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
                        <li><a href="Profile.aspx">Profile</a></li>
                        <li class="active"><a href="MyExams.aspx">My Exams</a></li>
                        <li><a href="studentExamRegistration.aspx">Exam Registration</a></li> 
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="divider-vertical"></li>
                        <li><a href="Rules.aspx">Rules & Regulations</a></li>
                        <li class="divider-vertical"></li>
                        <li><a id="logout_link" runat="server" onServerClick="logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    <div class="container">
        <div class="row"
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="exam_code" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="exam_code" HeaderText="Exam Code" ReadOnly="True" SortExpression="exam_code"></asp:BoundField>
                        <asp:BoundField DataField="exam_title" HeaderText="Title" SortExpression="exam_title"></asp:BoundField>
                        <asp:BoundField DataField="exam_description" HeaderText="Description" SortExpression="exam_description"></asp:BoundField>
                        <asp:BoundField DataField="exam_specialisation" HeaderText="Specialisation" SortExpression="exam_specialisation"></asp:BoundField>
                        <asp:BoundField DataField="e_date" HeaderText="e_date" SortExpression="Date"></asp:BoundField>
                        <asp:BoundField DataField="e_time" HeaderText="e_time" SortExpression="Time"></asp:BoundField>
                        <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="Duration"></asp:BoundField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button cssClass="btn-primary" ID="delete_registered_exams" runat="server"
                                    CommandName="deleteRegisteredExamCommand"
                                    CommandArgument="<%# CType(Container, GridViewRow).RowIndex %>"
                                    Text="Delete" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                </div>
            <div class="col-md-2"></div>
            </div>
    </div>
    </form>
</body>
</html>
