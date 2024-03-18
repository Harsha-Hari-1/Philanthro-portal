Imports System.Data.SqlClient
Imports System.Data
Public Class dontoind
    Inherits System.Web.UI.Page
    Dim con As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Not Me.IsPostBack Then
        '    type()
        'End If
        'If Not Me.IsPostBack Then
        '    donar()
        'End If
        'If Not Me.IsPostBack Then
        '    ind()
        'End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles indpay.Click

        Dim instr As String
        instr = "Insert INTO dontoind(user_id,reg_id,amount,date) Values(" + txtuser.Text + "," + txtind.Text + ",'" + dtiamt.Text + "','" + dtidate.Text + "')"
        Dim cmdo As SqlCommand = New SqlCommand(instr, con.connect())
        cmdo.ExecuteNonQuery()
        Response.Write("<script>alert('Data saved');</script>")
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