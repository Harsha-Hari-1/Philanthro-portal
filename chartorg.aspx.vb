Imports System.Data.SqlClient
Imports System.Data

Public Class chartorg
    Inherits System.Web.UI.Page
    Dim co As philanthro = New philanthro

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Dim query As String
            Dim orgid As String = Session("org_id").ToString()
            'If orgid = donated_by Then
            query = "Select organization.org_id,organization.org_name,orgatoind.orin_id,orgatoind.donated_by,orgatoind.reg_name,orgatoind.amt,orgatoind.dt from organization JOIN orgatoind ON organization.org_id=orgatoind.donated_by WHERE orgatoind.donated_by = " + orgid
            '"SELECT customers.customer_id, customers.customer_name, orders.order_id, orders.order_date FROM customers INNER JOIN orders ON customers.customer_id = orders.customer_id WHERE customers.customer_id = @CustomerId"
            'query = " SELECT * FROM orgatoind WHERE donated_by =  " + userid
            Dim com As SqlCommand = New SqlCommand(query, co.connect)
            Dim sqldaC As SqlDataAdapter = New SqlDataAdapter(com)
            Dim ds As DataTable = New DataTable
            sqldaC.Fill(ds)
            'Dim ad As SqlDataAdapter = New SqlDataAdapter(cmd)
            'ad.Fill(ds)
            Chartorg.DataSource = ds
            Chartorg.DataBind()
        End If
    End Sub

End Class