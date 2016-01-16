Public Class StudentListAdmin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("email") <> "admin@college.com" Then
            Response.Redirect("Home.aspx")
        End If
    End Sub

End Class