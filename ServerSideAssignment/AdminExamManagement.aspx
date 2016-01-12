<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AdminExamManagement.aspx.vb" Inherits="ServerSideAssignment.AdminExamManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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



    </div>
    </form>
</body>
</html>
