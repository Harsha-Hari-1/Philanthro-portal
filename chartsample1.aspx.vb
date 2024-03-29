Imports System.Data.SqlClient
Imports System.Data
Public Class chartsample1
    Inherits System.Web.UI.Page
    Dim co As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Dim query As String
            Dim userid As String = Session("user_id").ToString()
            query = "select donar.user_id,donar.name,dontoind.di_id,dontoind.donate_by,dontoind.reg_name,dontoind.reg_id,dontoind.date,dontoind.amount from donar join dontoind on donar.user_id=dontoind.donate_by where donar.user_id=" + userid
            Dim comn As SqlCommand = New SqlCommand(query, co.connect)
            Dim sqldaC As SqlDataAdapter = New SqlDataAdapter(comn)
            Dim ds As DataTable = New DataTable
            sqldaC.Fill(ds)
            'Dim ad As SqlDataAdapter = New SqlDataAdapter(cmd)
            'ad.Fill(ds)
            Chart1.DataSource = ds
            Chart1.DataBind()
        End If
    End Sub

End Class