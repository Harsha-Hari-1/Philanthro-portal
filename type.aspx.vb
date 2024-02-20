Imports System.Data.SqlClient
Imports System.Data
Public Class type
    Inherits System.Web.UI.Page
    Dim con As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       
      
    End Sub

    Protected Sub btntype_Click(sender As Object, e As EventArgs) Handles btntype.Click
        Dim instr As String
        instr = "Insert INTO user_type(name) Values('" + txttype.Text + "')"
        Dim cmdo As SqlCommand = New SqlCommand(instr, con.connect())
        cmdo.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
    End Sub
End Class