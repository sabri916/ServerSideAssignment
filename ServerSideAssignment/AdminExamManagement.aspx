<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AdminExamManagement.aspx.vb" Inherits="ServerSideAssignment.AdminExamManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exam Management</title>
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
        <div class="form-group">        
            <asp:Label ID="exam_code_label" runat="server" Text="Exam Code"></asp:Label>
            <asp:TextBox class="form-control" ID="exam_code_box" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="exam_code_validator"
                ControlToValidate="exam_code_box"
                runat="server"
                ErrorMessage="Please enter exam code"
                Text="<div class='alert-danger'><strong>*</strong></div>"
                SetFocusOnError="True"
                Display="Dynamic">
            </asp:RequiredFieldValidator>
            <br />
        </div>

        <div class="form-group">        
            <asp:Label ID="exam_title_label" runat="server" Text="Exam title"></asp:Label>
            <asp:TextBox class="form-control" ID="exam_title_box" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="exam_title_validator"
                ControlToValidate="exam_title_box"
                runat="server"
                ErrorMessage="Please enter exam title"
                Text="<div class='alert-danger'><strong>*</strong></div>"
                SetFocusOnError="True"
                Display="Dynamic">
            </asp:RequiredFieldValidator>
            <br />
        </div>

        <div class="form-group">        
            <asp:Label ID="exam_description_label" runat="server" Text="Exam Description"></asp:Label>
            <textarea id="exam_description_area" cols="20" rows="5"></textarea>
            <br />
        </div>

        <div class="form-group">        
            <asp:Label ID="date_label" runat="server" Text="Date"></asp:Label>
            <asp:Calendar ID="exam_calendar" runat="server"></asp:Calendar>
            <br />
        </div>

        <div class="form-group">        
            <asp:Label ID="exam_time" runat="server" Text="Exam Time"></asp:Label>
            <asp:DropDownList ID="hour_dropdown" runat="server">
                <asp:ListItem>Hours</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator
                ID="hour_dropdown_validator"
                InitialValue="Hours"
                ControlToValidate="hour_dropdown"
                runat="server"
                ErrorMessage="Please enter Time"
                Text="<div class='alert-danger'><strong>*</strong></div>"
                SetFocusOnError="True"
                Display="Dynamic">
            </asp:RequiredFieldValidator>

            <asp:DropDownList ID="minutes_dropdown" runat="server">
                <asp:ListItem>Minutes</asp:ListItem>
                <asp:ListItem>00</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>45</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator
                ID="minutes_dropdown_validator"
                InitialValue="Minutes"
                ControlToValidate="hour_dropdown"
                runat="server"
                ErrorMessage="Please enter Time"
                Text="<div class='alert-danger'><strong>*</strong></div>"
                SetFocusOnError="True"
                Display="Dynamic">
            </asp:RequiredFieldValidator>
            <br />
        </div>
        <br />
        <asp:Button ID="add_exam_button" runat="server" Text="Add Exam" />
        <br />
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="exam_code" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="exam_code" HeaderText="Exam Code" ReadOnly="True" SortExpression="exam_code"></asp:BoundField>
                <asp:BoundField DataField="exam_title" HeaderText="Exam Title" SortExpression="exam_title"></asp:BoundField>
                <asp:BoundField DataField="exam_description" HeaderText="Exam Description" SortExpression="exam_description"></asp:BoundField>
                <asp:BoundField DataField="e_date" HeaderText="Date" SortExpression="e_date"></asp:BoundField>
                <asp:BoundField DataField="e_time" HeaderText="Time" SortExpression="e_time"></asp:BoundField>
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:desktopDB %>' SelectCommand="SELECT * FROM [exams]"></asp:SqlDataSource>
    </form>
</body>
</html>
