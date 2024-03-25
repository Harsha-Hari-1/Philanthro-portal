Imports System.Data.SqlClient
Imports System.Data
Public Class orgdonate
    Inherits System.Web.UI.Page
    Dim co As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Dim queryin As String
            Dim userid As String = Session("org_id").ToString()
            queryin = " SELECT * FROM individuals WHERE reg_id = " + userid

            Dim com As SqlCommand = New SqlCommand(queryin, co.connect)
            Dim sqldaC As SqlDataAdapter = New SqlDataAdapter(com)
            Dim ds As DataTable = New DataTable
            sqldaC.Fill(ds)

            'Dim selectedvalue As String
            'Session("SelectedData") = selectedvalue
            Dim apd As DataTable = New DataTable
            Dim newstr As String
            newstr = "select reg_id,iname,address,pan_no,phn,account,conttent from individuals"
            Dim cmd As SqlCommand = New SqlCommand(newstr, co.connect())
            Dim adp As SqlDataAdapter = New SqlDataAdapter(cmd)
            adp.Fill(apd)
            gd2.DataSource = apd
            gd2.DataBind()
        End If
    End Sub

    Protected Sub gd2_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gd2.RowCommand
        If e.CommandName = "orgtoind" Then
            Dim rowIndex As Integer = Convert.ToInt32(e.CommandArgument)
            Dim indid As Integer = Convert.ToInt64(gd2.DataKeys(rowIndex).Value)
            Dim inname As String = gd2.Rows(rowIndex).Cells(1).Text
            Dim cont As String = gd2.Rows(rowIndex).Cells(4).Text
            Session("selectedvalueind") = indid
            Session("selectedname") = inname

            Response.Redirect("orgtoind.aspx")
            'Session("selectedvalue") = name

        End If
    End Sub

    
    Protected Sub gd2_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles gd2.PageIndexChanging
        gd2.PageIndex = e.NewPageIndex
    End Sub
End Class