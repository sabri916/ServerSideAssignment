<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MyExams.aspx.vb" Inherits="ServerSideAssignment.MyExams" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
