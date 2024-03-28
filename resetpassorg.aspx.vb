Imports System.Data.SqlClient
Imports System.Data
Public Class resetpassorg
    Inherits System.Web.UI.Page
    Dim co As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        Dim email As String = txtEmail.Text
        Dim newPassword As String = txtPassword.Text
        Dim query As String = "UPDATE organization SET password = @password WHERE email = @email"
        Using cmd As New SqlCommand(query, co.connect())
            cmd.Parameters.AddWithValue("@password", newPassword)
            cmd.Parameters.AddWithValue("@email", email)
            cmd.ExecuteNonQuery()
        End Using
        Response.Redirect("login.aspx")
    End Sub
End Class