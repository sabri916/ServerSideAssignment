Imports System.Data.SqlClient

Public Class MyExams
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session.Item("email") Is Nothing Then
            Response.Redirect("home.aspx")
        End If

        If (Not Page.IsPostBack) Then
            Display_Exams()
        End If

    End Sub

    Private Sub Display_Exams()

        Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("myConnectionString").ConnectionString)
        con.Open()
        Dim ds As DataSet = New DataSet()
        Dim da As SqlDataAdapter = New SqlDataAdapter("select exams.exam_code,exam_title, exam_description, exam_specialisation, e_date, e_time,duration from exams inner join registered_exam on exams.exam_code = registered_exam.exam_code where registered_exam.email = '" + Session("email") + "'", con)
        da.Fill(ds, "search")
        GridView1.DataSource = ds
        GridView1.DataBind()
    End Sub

    Protected Function GridView1_RowCommand(ByVal sender As Object,
      ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) As Integer
        Dim conn As New SqlConnection(ConfigurationManager.ConnectionStrings("myConnectionString").ConnectionString)
        Dim sql_command As New SqlCommand()
        sql_command.Connection = conn

        Dim index As Integer = Convert.ToInt32(e.CommandArgument)
        Dim row As GridViewRow = GridView1.Rows(index)

        sql_command.CommandText = "delete from registered_exam where email = '" + Session("email") + "' AND exam_code = '" + row.Cells(0).Text + "'"
        sql_command.CommandType = CommandType.Text

        conn.Open()
        Dim r As Integer = sql_command.ExecuteNonQuery()
        conn.Close()
        Response.Write("Exam Unregistered")
        Response.Redirect("MyExams.aspx")
        Return r
    End Function

End Class