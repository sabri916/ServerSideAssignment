Imports System.Data.SqlClient

Public Class AdminExamManagement
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Function Add_Exam(code As String, title As String, description As String, specialisation As String, hours As String, minutes As String, duration As String) As Integer
        Dim conn As New SqlConnection(ConfigurationManager.ConnectionStrings("myConnectionString").ConnectionString)
        Dim sql_command As New SqlCommand()

        sql_command.Connection = conn

        sql_command.CommandText = "insert into exams values('" + code + "','" + title + "','" + description + "','" + specialisation + "','" + hours + "','" + minutes + "'," + duration + ")"
        sql_command.CommandType = CommandType.Text
        Response.Write(sql_command.CommandText)
        conn.Open()
        Dim r As Integer = sql_command.ExecuteNonQuery()
        conn.Close()
        Response.Write("student added")

        Return 0
    End Function

    Protected Sub add_exam_button_Click(sender As Object, e As EventArgs) Handles add_exam_button.Click
        Dim exam_date As String = exam_calendar.SelectedDate.ToString("yyyy-MM-dd")
        Dim exam_time As String = hour_dropdown.Text + ":" + minutes_dropdown.Text + ":00"

        Add_Exam(exam_code_box.Text, exam_title_box.Text, exam_description_area.InnerHtml.ToString, specialisation_list.Text, exam_date, exam_time, duration_box.Text)
        Response.Redirect("AdminExamManagement.aspx")
    End Sub
End Class