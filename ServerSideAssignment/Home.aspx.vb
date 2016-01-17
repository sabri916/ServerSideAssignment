Imports System.Data.SqlClient

Public Class Home
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Session.Item("email") Is Nothing Then
            Dim email As String = Session.Item("email")
            If (email.Equals("admin@college.com")) Then
                Response.Redirect("AdminProfile.aspx")
            ElseIf (Session("email") <> Nothing) Then
                Response.Redirect("Home.aspx")
            End If
        End If

    End Sub

    Private Sub Verify_Account(email As String, password As String)
        Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("myConnectionString").ConnectionString)
        con.Open()
        Dim cmd As New SqlCommand("select * from Students where email =@email and s_password=@password", con)
        cmd.Parameters.AddWithValue("@email", email)
        cmd.Parameters.AddWithValue("@password", password)
        Dim da As New SqlDataAdapter(cmd)
        Dim dt As New DataTable()
        da.Fill(dt)
        If dt.Rows.Count > 0 Then
            Session("first_name") = dt.Rows(0)("first_name").ToString()
            Session("last_name") = dt.Rows(0)("last_name").ToString()
            Session("email") = dt.Rows(0)("email").ToString()
            Session("specialisation") = dt.Rows(0)("specialisation").ToString()

            If dt.Rows(0)("email").ToString().Equals("admin@college.com") Then
                Response.Redirect("adminProfile.aspx")
            End If

            Response.Redirect("Profile.aspx")
            Else
                Response.Write("invalid user name and password")
        End If

    End Sub

    Protected Sub login_button_Click(sender As Object, e As EventArgs) Handles login_button.Click

        Verify_Account(email_box.Text, password_box.Text)
    End Sub

End Class