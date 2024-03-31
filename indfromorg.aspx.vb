Imports System.Data.SqlClient
Imports System.Data
Public Class indfromorg
    Inherits System.Web.UI.Page
    Dim co As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Dim query As String
            Dim userid As String = Session("reg_id").ToString()
            query = "Select organization.org_id,organization.org_name,orgatoind.orin_id,orgatoind.donated_by,orgatoind.reg_id,orgatoind.reg_name,orgatoind.amt,orgatoind.dt from orgatoind JOIN organization ON organization.org_id=orgatoind.donated_by WHERE orgatoind.reg_id = " + userid
            Dim comn As SqlCommand = New SqlCommand(query, co.connect)
            Dim sqldaC As SqlDataAdapter = New SqlDataAdapter(comn)
            Dim ds As DataTable = New DataTable
            sqldaC.Fill(ds)
            orgind.DataSource = ds
            orgind.DataBind()
        End If
    End Sub

End Class