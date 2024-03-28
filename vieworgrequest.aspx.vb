Imports System.Data.SqlClient
Imports System.Data
Public Class vieworgrequest
    Inherits System.Web.UI.Page
    Dim co As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Dim query As String
            Dim userid As String = Session("selectedvalueorg").ToString()
            query = " Select organization.org_id,organization.org_name,org_post.post_id,org_post.org_id,org_post.org_name,org_post.details,org_post.amount from organization  JOIN org_post on organization.org_id=org_post.org_id WHERE org_post.org_id =  " + userid
            Dim com As SqlCommand = New SqlCommand(query, co.connect)
            Dim sqldaC As SqlDataAdapter = New SqlDataAdapter(com)
            Dim ap As DataTable = New DataTable
            sqldaC.Fill(ap)
            'Dim ap As DataTable = New DataTable
            'Dim str As String
            'str = "select org_id,org_name,details,amount from org_post"
            'Dim cmd As SqlCommand = New SqlCommand(str, co.connect())
            'Dim ad As SqlDataAdapter = New SqlDataAdapter(cmd)
            'ad.Fill(ap)
            gvrequest.DataSource = ap
            gvrequest.DataBind()
        End If

    End Sub

    Protected Sub gvrequest_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gvrequest.SelectedIndexChanged

    End Sub

    Protected Sub gvrequest_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles gvrequest.PageIndexChanging
        gvrequest.PageIndex = e.NewPageIndex
    End Sub

    Protected Sub gvrequest_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvrequest.RowCommand
        If e.CommandName = "Donate" Then
            Dim rowIndex As Integer = Convert.ToInt32(e.CommandArgument)
            Dim id As Integer = Convert.ToInt64(gvrequest.DataKeys(rowIndex).Value)
            Dim name As String = gvrequest.Rows(rowIndex).Cells(1).Text
            Dim ngo As String = gvrequest.Rows(rowIndex).Cells(4).Text
            Session("selectedvalue") = id
            Session("selectedname") = name
            Response.Redirect("dontoorg.aspx")
        End If
    End Sub
End Class