Imports System.Data.SqlClient
Imports System.Data
Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim con As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dataValue As String = Session("selectedname").ToString()
        otiind.Text = Session("selectedname")
    End Sub

    Protected Sub orginpay_Click(sender As Object, e As EventArgs) Handles orginpay.Click
        Dim ins As String
        'Dim loggedInUser As String = Session("loggedInUser").ToString()
        ins = "insert into orgatoind(reg_id,reg_name,amt,dt,donated_by)values(" + Session("selectedvalueind").ToString + ",'" + Session("selectedname").ToString() + "','" + otiamt.Text + "','" + otidate.Text + "'," + Session("org_id").ToString + ")"
        Dim cmdog As SqlCommand = New SqlCommand(ins, con.connect())
        Dim dataValue As String = Request.QueryString("dataKey")
        cmdog.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved');</script>")
        Response.Redirect("payment.aspx")
        
    End Sub
End Class