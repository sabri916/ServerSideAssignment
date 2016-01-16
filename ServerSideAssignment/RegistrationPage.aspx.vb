Imports System.Data.SqlClient

Public Class RegistrationPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Function Register_User(first_name As String, last_name As String, password As String, email As String, gender As String, date_of_birth As String, specialisation As String) As Integer
        Dim conn As New SqlConnection(ConfigurationManager.ConnectionStrings("myConnectionString").ConnectionString)
        Dim sql_command As New SqlCommand()

        sql_command.Connection = conn

        'sql_command.CommandText = ""

        sql_command.CommandText = "insert into students values('" + first_name + "','" + last_name + "','" + password + "','" + email + "','" + gender + "','" + date_of_birth + "','" + specialisation + "')"
        sql_command.CommandType = CommandType.Text

        conn.Open()
        Dim r As Integer = sql_command.ExecuteNonQuery()
        conn.Close()
        Response.Write("student added")


        Return r
    End Function

    Protected Sub register_button_Click(sender As Object, e As EventArgs) Handles register_button.Click

        Dim dob As String = dob_calendar.SelectedDate.ToString("yyyy-MM-dd")
        Response.Write(dob)

        Register_User(first_name_box.Text, last_name_box.Text, password_box.Text, email_box.Text, gender_list.SelectedValue, dob, specialisation_list.Text)
    End Sub
End Class