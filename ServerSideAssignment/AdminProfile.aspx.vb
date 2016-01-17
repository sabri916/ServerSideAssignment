Public Class AdminProfile
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session.Item("email") Is Nothing Then
            Response.Redirect("home.aspx")
        End If
    End Sub

End Class