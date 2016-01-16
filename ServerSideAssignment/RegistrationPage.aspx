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
                    <asp:Label ID="first_name_label" runat="server" Text="First Name:"></asp:Label>
                    <asp:TextBox class="form-control" ID="first_name_box" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ID="first_name_validator"
                        ControlToValidate="first_name_box"
                        ValidationGroup="student_registration_validation_group"
                        runat="server"
                        ErrorMessage="Please enter first name"
                        Text="<div class='alert-danger'><strong>*</strong></div>"
                        SetFocusOnError="True"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </div>

                 <div class="form-group">
                    <asp:Label ID="last_name_label" runat="server" Text="Last Name:"></asp:Label>
                    <asp:TextBox class="form-control" ID="last_name_box" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ID="last_name_validator"
                        ControlToValidate="last_name_box"
                        ValidationGroup="student_registration_validation_group"
                        runat="server"
                        ErrorMessage="Please enter last name."
                        Text="<div class='alert-danger'><strong>*</strong></div>"
                        SetFocusOnError="True"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </div>
             

                <div class="form-group">
                    <asp:Label ID="password_label" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox class="form-control" ID="password_box" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator
                    ID="password_validator"
                    ControlToValidate="password_box"
                    ValidationGroup="student_registration_validation_group"
                    runat="server" 
                    ErrorMessage="Please enter password"
                    Text ="<div class='alert-danger'><strong>*</strong></div>"
                    CssClass="alert-text" 
                    SetFocusOnError="True" 
                    Display = "Dynamic">
                    </asp:RequiredFieldValidator>
                </div> 

                <div class="form-group">
                    <asp:Label ID="password_label2" runat="server" Text="Verify Password"></asp:Label>
                    <asp:TextBox class="form-control" ID="password_box2" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator
                    ID="password2_required_validator"
                    ControlToValidate="password_box2"
                    ValidationGroup="student_registration_validation_group"
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
                </div> 

                <div class="form-group">
                    <asp:Label ID="email_label" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox class="form-control" ID="email_box" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator
                    ID="email_required_validator"
                    ControlToValidate="email_box"
                    ValidationGroup="student_registration_validation_group"
                    runat="server" 
                    ErrorMessage="Please enter email"
                    Text="<div class='alert-danger'><strong>*</strong></div>"
                    CssClass="alert-text" 
                    SetFocusOnError="True" 
                    Display = "Dynamic">
                    </asp:RequiredFieldValidator>
                    <asp:CustomValidator
                        ID="email_custom_validation"
                        ControlToValidate="email_box"
                        ValidationGroup="student_registration_validation_group"
                        runat="server"
                        ErrorMessage="CustomValidator"
                        Text="<div class='alert-danger'><strong>*</strong></div>"
                        CssClass="alert-text" 
                        SetFocusOnError="True" 
                        Display = "Dynamic"
                        OnServerValidate ="Validate_Email_Existance">
                        </asp:CustomValidator>
                </div> 

                <asp:Label ID="gender_label" runat="server" Text="gender"></asp:Label><br />
                <asp:RadioButtonList ID="gender_list" runat="server">
                    <asp:ListItem value="M" Text="Male"></asp:ListItem>
                    <asp:ListItem value="F" Text="Female"></asp:ListItem>
                </asp:RadioButtonList>

                <asp:Label ID="calendar_label" runat="server" Text="Date of Birth"></asp:Label>
                <asp:Calendar ID="dob_calendar" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>

                <div class="form-group">
                    <asp:Label ID="specialisation_label" runat="server" Text="Specialisation"></asp:Label>
                    <asp:DropDownList class="form-control" ID="specialisation_list" runat="server">
                        <asp:ListItem Text="Specialisation" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Computer Science" Value="Computer Science"></asp:ListItem>
                        <asp:ListItem Text="Information Systems" Value="Information Systems"></asp:ListItem>
                        <asp:ListItem Text="Multimedia" Value="Multimedia"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator
                    ID="specialisation_required_validator"
                    InitialValue="0"
                    ControlToValidate="specialisation_list"
                    ValidationGroup="student_registration_validation_group"
                    runat="server" 
                    ErrorMessage="Please Select your specialisation"
                    Text="<div class='alert-danger'><strong>*</strong></div>"
                    CssClass="alert-text" 
                    SetFocusOnError="True" 
                    Display = "Dynamic">
                    </asp:RequiredFieldValidator>

                </div> 

                <asp:Button class="btn btn-primary" ID="register_button" runat="server" Text="Register" ValidationGroup="student_registration_validation_group" CausesValidation="true" OnClientClick="Validate_Email_Existance"/>
            </form>
        </div>
</div>
</body>
</html>
