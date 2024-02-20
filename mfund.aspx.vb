Imports System.Data.SqlClient
Imports System.Data
Public Class mfund
    Inherits System.Web.UI.Page
    Dim con As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
        If Not Me.IsPostBack Then
            morg()
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Btncompute.Click
        Dim instr As String
        instr = "Insert INTO monthanalysis(org_id,date) Values(" + ddlmfund.SelectedValue + ",'" + madate.Text + "')"
        Dim cmdo As SqlCommand = New SqlCommand(instr, con.connect())
        cmdo.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
    End Sub
    Public Sub morg()
        Dim str As String
        str = "select org_id,org_name from organization"
        Dim com As SqlCommand = New SqlCommand(str, con.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim ds1 As DataTable = New DataTable
        sqlda.Fill(ds1)
        ddlmfund.DataTextField = "org_name"
        ddlmfund.DataValueField = "org_id"
        ddlmfund.DataSource = ds1
        ddlmfund.DataBind()
    End Sub
End Class