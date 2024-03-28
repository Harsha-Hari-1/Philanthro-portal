Imports System.Data.SqlClient
Imports System.Data
Public Class viewfundorgdon
    Inherits System.Web.UI.Page
    Dim co As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Dim query As String
            Dim userid As String = Session("user_id").ToString()
            query = "select donar.user_id,donar.name,dontoorg.donation_id,dontoorg.don_by,dontoorg.org_id,dontoorg.date,dontoorg.amount from donar join dontoorg on donar.user_id=dontoorg.don_by where dontoorg.don_by=" + userid
            Dim comn As SqlCommand = New SqlCommand(query, co.connect)
            Dim sqldaC As SqlDataAdapter = New SqlDataAdapter(comn)
            Dim ds As DataTable = New DataTable
            sqldaC.Fill(ds)
            'Dim ad As SqlDataAdapter = New SqlDataAdapter(cmd)
            'ad.Fill(ds)
            gvfundorg.DataSource = ds
            gvfundorg.DataBind()
        End If
        
    End Sub

End Class