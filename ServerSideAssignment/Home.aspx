<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Home.aspx.vb" Inherits="ServerSideAssignment.Home" %>

<!DOCTYPE html>
<!--laptop edited-->
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

    <title>Home - Exam Registration System</title>

</head>

<body>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Exam Registration System</a>
            </div>
            <div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#">Profile</a></li>
                    <li><a href="#">Exam Registration</a></li> 
                    <li><a href="#">Registered Exam</a></li> 
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="divider-vertical"></li>
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> New User</a></li>
                    <li class="dropdown">

                        <a class="dropdown-toggle" href="#" data-toggle="dropdown"><span class="glyphicon glyphicon-log-in"></span> Login <strong class="caret"></strong></a></a>
                        <div class="dropdown-menu" style="padding: 15px; padding-bottom: 0px; width:20em">
                            <!-- Login form here -->
                            <form role="form" id="login_form" runat="server" class="form-group">
                                <div class="form-group">
                                    <asp:Label ID="email_label" runat="server" Text="Email"></asp:Label>
                                    <asp:TextBox ID="email_box" runat="server" class="form-control"></asp:TextBox>
                                    <div class="alert-danger">
                                        <asp:RequiredFieldValidator
                                        ID="email_box_validator"
                                        ControlToValidate="email_box" 
                                        runat="server" 
                                        ErrorMessage="Please enter email"
                                        CssClass="alert-text" 
                                        SetFocusOnError="True" 
                                        Display = "Dynamic">
                                        </asp:RequiredFieldValidator>
                                    </div>  
                                    <br />
                                    <asp:Label ID="password_label" runat="server" Text="Password"></asp:Label>
                                    <asp:TextBox ID="password_box" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
                                    <div class="alert-danger">
                                        <asp:RequiredFieldValidator
                                        ID="password_validator"
                                        ControlToValidate="password_box"
                                        runat="server" 
                                        ErrorMessage="Please enter password<br />"
                                        CssClass="alert-text" 
                                        SetFocusOnError="True" 
                                        Display = "Dynamic">
                                        </asp:RequiredFieldValidator>
                                    </div>
                                    <br />
                                    <asp:Button ID="login_button" runat="server" Text="Login" class="btn btn-primary" />
                                </div>
                            </form>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</body>
</html>
