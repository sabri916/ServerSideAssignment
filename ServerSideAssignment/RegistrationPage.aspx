<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RegistrationPage.aspx.vb" Inherits="ServerSideAssignment.RegistrationPage" %>

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
    <title>Registration Page - Exam Registration System</title>
    
</head>
<body>
    <div class="container">
        <div class="col-md-5">
            <form role="form" id="form1" runat="server">

                <div class="form-group">        
                    <asp:Label ID="student_id_label" runat="server" Text="Student ID"></asp:Label>
                    <asp:TextBox class="form-control" ID="student_id_box" runat="server"></asp:TextBox>
                    <br />
                </div>
             

                <div class="form-group">
                    <asp:Label ID="password_label" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox class="form-control" ID="password_box" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                </div> 

                <div class="form-group">
                    <asp:Label ID="password_label2" runat="server" Text="Verify Password"></asp:Label>
                    <asp:TextBox class="form-control" ID="password_box2" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                </div> 

                <div class="form-group">
                    <asp:Label ID="email_label" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox class="form-control" ID="Email" runat="server" TextMode="Email"></asp:TextBox>
                    <br />
                </div> 

                <div class="form-group">
                    <asp:Label ID="specialisation_label" runat="server" Text="Specialisation"></asp:Label>
                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                        <asp:ListItem Text="Specialisation" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Computer Science" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Information Systems" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Multimedia" Value="3"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </div> 

                <asp:Button class="btn btn-primary" ID="register_button" runat="server" Text="Register" />
            </form>
        </div>
</div>
</body>
</html>
