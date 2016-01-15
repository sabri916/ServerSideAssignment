Imports System.Data.SqlClient

Public Class studentExamRegistration
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Function register_exam(email As String, exam_code As String) As Integer
        Dim conn As New SqlConnection(ConfigurationManager.ConnectionStrings("myConnectionString").ConnectionString)
        Dim sql_command As New SqlCommand()

        sql_command.Connection = conn

        sql_command.CommandText = "insert into registered_exam values('" + email + "','" + exam_code + "')"
        sql_command.CommandType = CommandType.Text

        conn.Open()
        Dim r As Integer = sql_command.ExecuteNonQuery()
        conn.Close()
        Response.Write("exam registered")


        Return r
    End Function

    Protected Sub GridView1_RowCommand(ByVal sender As Object,
      ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs)
        If (e.CommandName = "RegisterExamCommand") Then
            ' Retrieve the row index stored in the CommandArgument property.
            Dim index As Integer = Convert.ToInt32(e.CommandArgument)

            ' Retrieve the row that contains the button 
            ' from the Rows collection.
            Dim row As GridViewRow = GridView1.Rows(index)

            register_exam(Session("email"), row.Cells(0).Text)

        End If
    End Sub
End Class