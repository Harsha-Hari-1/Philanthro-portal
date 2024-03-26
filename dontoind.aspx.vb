Imports System.Data.SqlClient
Imports System.Data
Public Class dontoind
    Inherits System.Web.UI.Page
    Dim con As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dataValue As String = Session("selectedname").ToString()
        txtind.Text = Session("selectedname")
    End Sub

    Protected Sub indpay_Click(sender As Object, e As EventArgs) Handles indpay.Click

        Dim instr As String
        instr = "Insert INTO dontoind(reg_id,amount,date,donate_by) Values(" + Session("selectedvalue").ToString + ",'" + dtiamt.Text + "','" + dtidate.Text + "'," + Session("user_id").ToString + ")"
        Dim cmdo As SqlCommand = New SqlCommand(instr, con.connect())
        Dim dataValue As String = Request.QueryString("dataKey")
        'Dim selectedData As String = Session("SelectedData")
        cmdo.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved');</script>")
        Response.Redirect("payment.aspx")
    End Sub
    'Public Sub type()
    '    Dim str As String
    '    str = "select type_id,name from user_type"
    '    Dim com As SqlCommand = New SqlCommand(str, con.connect())
    '    Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
    '    Dim dt As DataTable = New DataTable
    '    sqlda.Fill(dt)
    '    ddluser.Items.Clear()
    '    ddluser.Items.Add("--Select--")
    '    ddluser.DataTextField = "name"
    '    ddluser.DataValueField = "type_id"
    '    ddluser.DataSource = dt
    '    ddluser.DataBind()
    'End Sub
    'Public Sub donar()
    '    Dim strs As String
    '    strs = "select user_id,name from donar"
    '    Dim com As SqlCommand = New SqlCommand(strs, con.connect())
    '    Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
    '    Dim ds As DataTable = New DataTable
    '    sqlda.Fill(ds)
    '    ddluser.Items.Clear()
    '    ddluser.Items.Add("--Select--")
    '    ddluser.DataTextField = "name"
    '    ddluser.DataValueField = "user_id"
    '    ddluser.DataSource = ds
    '    ddluser.DataBind()
    'End Sub
    'Public Sub ind()
    '    Dim strst As String
    '    strst = "select reg_id,iname from individuals"
    '    Dim com As SqlCommand = New SqlCommand(strst, con.connect())
    '    Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
    '    Dim dst As DataTable = New DataTable
    '    sqlda.Fill(dst)
    '    ddluser.Items.Clear()
    '    ddluser.Items.Add("--Select--")
    '    ddluser.DataTextField = "iname"
    '    ddluser.DataValueField = "reg_id"
    '    ddluser.DataSource = dst
    '    ddluser.DataBind()
    'End Sub


    'Protected Sub ddluser_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddluser.SelectedIndexChanged
    '    donar()
    'End Sub
End Class