Imports System.Data.SqlClient
Imports System.Data
Public Class State
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn.ConnectionString = "Data Source=HARSHA\SQLEXPRESS;Initial Catalog=philanthroportal;User ID=sa;Password=123"
        conn.Open()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim instr As String
        instr = "Insert INTO state(name) Values('" + txtstate.Text + "')"
        Dim cmdo As SqlCommand = New SqlCommand(InStr, conn)
        cmdo.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
    End Sub
End Class