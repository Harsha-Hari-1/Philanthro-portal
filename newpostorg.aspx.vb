Imports System.Data.SqlClient
Imports System.Data
Public Class newpost
    Inherits System.Web.UI.Page
    Dim co As philanthro = New philanthro
    Dim dataKey As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        dataKey = Session("org_name").ToString()
        orgtxt.Text = dataKey
    End Sub

    Protected Sub btnpost_Click(sender As Object, e As EventArgs) Handles btnpost.Click
        Dim instrnew As String
        instrnew = "insert into org_post(org_id,org_name,details,amount)values ('" + Session("org_id") + "','" + Session("org_name") + "','" + needtxt.Text + "'," + amttxt.Text + ")"
        Dim cmdo As SqlCommand = New SqlCommand(instrnew, co.connect())
        'Dim dataValue As String = Request.QueryString("dataKey")
        'Dim selectedData As String = Session("SelectedData")
        cmdo.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved');</script>")
    End Sub
End Class