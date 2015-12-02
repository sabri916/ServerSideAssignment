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
                <asp:ValidationSummary CssClass="alert alert-danger" ID="registration_validation_summary" DisplayMode="BulletList" runat="server" />

                <br />

                <div class="form-group">        
                    <asp:Label ID="student_id_label" runat="server" Text="Student ID"></asp:Label>
                    <asp:TextBox class="form-control" ID="student_id_box" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ID="student_id_required_validator"
                        ControlToValidate="student_id_box"
                        runat="server"
                        ErrorMessage="Please enter Student ID"
                        Text="<div class='alert-danger'><strong>*</strong></div>"
                        SetFocusOnError="True"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                    <br />
                </div>
             

                <div class="form-group">
                    <asp:Label ID="password_required_validator" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox class="form-control" ID="password_box" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator
                    ID="student_id_validator"
                    ControlToValidate="password_box" 
                    runat="server" 
                    ErrorMessage="Please enter password"
                    Text ="<div class='alert-danger'><strong>*</strong></div>"
                    CssClass="alert-text" 
                    SetFocusOnError="True" 
                    Display = "Dynamic">
                    </asp:RequiredFieldValidator>
                    <br />
                </div> 

                <div class="form-group">
                    <asp:Label ID="password_label2" runat="server" Text="Verify Password"></asp:Label>
                    <asp:TextBox class="form-control" ID="password_box2" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator
                    ID="password2_required_validator"
                    ControlToValidate="password_box2" 
                    runat="server" 
                    ErrorMessage="Please enter Password"
                    Text="<div class='alert-danger'><strong>*</strong></div>"
                    CssClass="alert-text" 
                    SetFocusOnError="True" 
                    Display = "Dynamic">
                    </asp:RequiredFieldValidator>

                    <asp:CompareValidator
                    ID="password_comapre_validator"
                    runat="server"
                    Display="Dynamic"
                    ControlToCompare="password_box"
                    ControlToValidate="password_box2"
                    ErrorMessage="CompareValidator">
                    </asp:CompareValidator>
                    <br />
                </div> 

                <div class="form-group">
                    <asp:Label ID="email_label" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox class="form-control" ID="email_box" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator
                    ID="email_required_validator"
                    ControlToValidate="email_box" 
                    runat="server" 
                    ErrorMessage="Please enter email"
                    Text="<div class='alert-danger'><strong>*</strong></div>"
                    CssClass="alert-text" 
                    SetFocusOnError="True" 
                    Display = "Dynamic">
                    </asp:RequiredFieldValidator>
                    <asp:CompareValidator
                    ID="CompareValidator1"
                    runat="server"
                    ControlToCompare="password_box"
                    ControlToValidate="password_box2"
                    ErrorMessage="CompareValidator">
                    </asp:CompareValidator>
                    <br />
                </div> 

                <div class="form-group">
                    <asp:Label ID="specialisation_label" runat="server" Text="Specialisation"></asp:Label>
                    <asp:DropDownList class="form-control" ID="specialisation_list" runat="server">
                        <asp:ListItem Text="Specialisation" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Computer Science" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Information Systems" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Multimedia" Value="3"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator
                    ID="specialisation_required_validator"
                    ControlToValidate="specialisation_list" 
                    runat="server" 
                    ErrorMessage="Please Select your specialisation"
                    Text="<div class='alert-danger'><strong>*</strong></div>"
                    CssClass="alert-text" 
                    SetFocusOnError="True" 
                    Display = "Dynamic">
                    </asp:RequiredFieldValidator>
                    <br />
                </div> 

                <asp:Button class="btn btn-primary" ID="register_button" runat="server" Text="Register" />
            </form>
        </div>
</div>
</body>
</html>
