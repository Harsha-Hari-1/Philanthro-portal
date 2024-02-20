Imports System.Data.SqlClient
Imports System.Data
Public Class fund
    Inherits System.Web.UI.Page
    Dim con As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnfund.Click
        Dim instr As String
        instr = "Insert INTO analysis(user_id,ana_date) Values('" + fudname.Text + "','" + fuanalysis.Text + "')"
        Dim cmdo As SqlCommand = New SqlCommand(instr, con.connect())
        cmdo.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
    End Sub
    Sub fund()

    End Sub
End Class