Imports System.Data.SqlClient
Imports System.Data
Public Class viewind
    Inherits System.Web.UI.Page
    Dim co As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Dim query As String
            Dim userid As String = Session("user_id").ToString()
            query = " SELECT * FROM individuals WHERE reg_id = " + userid
            Dim com As SqlCommand = New SqlCommand(query, co.connect)
            Dim sqldaC As SqlDataAdapter = New SqlDataAdapter(com)
            Dim ds As DataTable = New DataTable
            sqldaC.Fill(ds)
            Dim ap As DataTable = New DataTable
            Dim str As String
            str = "select iname,address,pan_no,phn,account,conttent from individuals"
            Dim cmd As SqlCommand = New SqlCommand(str, co.connect())
            Dim ad As SqlDataAdapter = New SqlDataAdapter(cmd)
            ad.Fill(ap)
            gd1.DataSource = ap
            gd1.DataBind()
        End If
    End Sub
    Protected Sub GVCV_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles gd1.PageIndexChanging
        gd1.PageIndex = e.NewPageIndex
    End Sub


    Protected Sub gd1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gd1.SelectedIndexChanged
        Response.Redirect("dontoind.aspx")
    End Sub
End Class