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

    <script runat="server">
        Sub test(obj As Object, e As DayRenderEventArgs)
            If e.Day.IsSelected Then
                Dim exam_date = exam_calendar.SelectedDate.ToString("yyyy-MM-dd")
                Dim time = hour_dropdown.Text + ":" + minutes_dropdown.Text + ":00"
            End If
        End Sub

    </script>

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
            <textarea id="exam_description_area" runat="server" cols="20" rows="5"></textarea>
            <br />
        </div>

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
            runat="server" 
            ErrorMessage="Please Select your specialisation"
            Text="<div class='alert-danger'><strong>*</strong></div>"
            CssClass="alert-text" 
            SetFocusOnError="True" 
            Display = "Dynamic">
            </asp:RequiredFieldValidator>
            <br />
        </div> 

        <div class="form-group">        
            <asp:Label ID="date_label" runat="server" Text="Date"></asp:Label>
            <asp:Calendar ID="exam_calendar" runat="server" OnDayRender="test"></asp:Calendar>
            <br />
        </div>

        <div class="form-group">        
            <asp:Label ID="exam_time" runat="server" Text="Exam Time"></asp:Label>
            <asp:DropDownList ID="hour_dropdown" runat="server">
                <asp:ListItem>Hours</asp:ListItem>
                <asp:ListItem>00</asp:ListItem>
                <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem>03</asp:ListItem>
                <asp:ListItem>04</asp:ListItem>
                <asp:ListItem>05</asp:ListItem>
                <asp:ListItem>06</asp:ListItem>
                <asp:ListItem>07</asp:ListItem>
                <asp:ListItem>08</asp:ListItem>
                <asp:ListItem>09</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
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

        <div class="form-group">        
            <asp:Label ID="duration_label" runat="server" Text="Duration"></asp:Label>
            <asp:TextBox class="form-control" ID="duration_box" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="duration_box_validator"
                ControlToValidate="duration_box"
                runat="server"
                ErrorMessage="Please Enter Duration"
                Text="<div class='alert-danger'><strong>*</strong></div>"
                SetFocusOnError="True"
                Display="Dynamic">
            </asp:RequiredFieldValidator>
            <br />
        </div>

        <br />
        <asp:Button ID="add_exam_button" runat="server" Text="Add Exam" />
        <br /><br />
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="exam_code" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="exam_code" HeaderText="exam_code" ReadOnly="True" SortExpression="exam_code"></asp:BoundField>
                <asp:BoundField DataField="exam_title" HeaderText="exam_title" SortExpression="exam_title"></asp:BoundField>
                <asp:BoundField DataField="exam_description" HeaderText="exam_description" SortExpression="exam_description"></asp:BoundField>
                <asp:BoundField DataField="exam_specialisation" HeaderText="exam_specialisation" SortExpression="exam_specialisation"></asp:BoundField>
                <asp:BoundField DataField="e_date" HeaderText="e_date" SortExpression="e_date"></asp:BoundField>
                <asp:BoundField DataField="e_time" HeaderText="e_time" SortExpression="e_time" />
                <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:myConnectionString %>' SelectCommand="SELECT * FROM [exams]" DeleteCommand="delete from registered_exam where exam_code = @exam_code;DELETE FROM [exams] WHERE [exam_code] = @exam_code" InsertCommand="INSERT INTO [exams] ([exam_code], [exam_title], [exam_description], [exam_specialisation], [e_date], [e_time]) VALUES (@exam_code, @exam_title, @exam_description, @exam_specialisation, @e_date, @e_time)" UpdateCommand="UPDATE [exams] SET [exam_title] = @exam_title, [exam_description] = @exam_description, [exam_specialisation] = @exam_specialisation, [e_date] = @e_date, [e_time] = @e_time WHERE [exam_code] = @exam_code">
            <DeleteParameters>
                <asp:Parameter Name="exam_code" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="exam_code" Type="String" />
                <asp:Parameter Name="exam_title" Type="String" />
                <asp:Parameter Name="exam_description" Type="String" />
                <asp:Parameter Name="exam_specialisation" Type="String" />
                <asp:Parameter DbType="Date" Name="e_date" />
                <asp:Parameter DbType="Time" Name="e_time" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="exam_title" Type="String" />
                <asp:Parameter Name="exam_description" Type="String" />
                <asp:Parameter Name="exam_specialisation" Type="String" />
                <asp:Parameter DbType="Date" Name="e_date" />
                <asp:Parameter DbType="Time" Name="e_time" />
                <asp:Parameter Name="exam_code" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
