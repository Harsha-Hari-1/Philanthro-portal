Imports System.Data.SqlClient
Imports System.Data
Public Class dontoorg
    Inherits System.Web.UI.Page
    Dim con As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dataValue As String = Session("selectedname").ToString()
        txtorg.Text = Session("selectedname")
        'Dim cmd As SqlCommand = New SqlCommand("SELECT user_id, fname,lname FROM user")
        'cmd.CommandType = CommandType.Text
        'If Not Me.IsPostBack Then
        '    dorg()
        'End If
    End Sub

    Protected Sub orgpay_Click(sender As Object, e As EventArgs) Handles orgpay.Click
        Dim instr As String
        instr = "Insert INTO dontoorg(org_id,amount,date,don_by) Values(" + Session("selectedvalue").ToString + ",'" + dtoamt.Text + "','" + dtodate.Text + "'," + Session("user_id").ToString + ")"
        Dim cmdo As SqlCommand = New SqlCommand(instr, con.connect())

        cmdo.ExecuteNonQuery()
        Response.Write("<script>alert('Data Saved');</script>")
        Response.Redirect("payment.aspx")
        dtodate.Text = ""

    End Sub
    'Sub dorg()
    '    Dim str As String
    '    str = "select org_id,org_name from organization"
    '    Dim com As SqlCommand = New SqlCommand(str, con.connect())
    '    Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
    '    Dim ds1 As DataTable = New DataTable
    '    sqlda.Fill(ds1)
    '    ddorpay.DataTextField = "org_name"
    '    ddorpay.DataValueField = "org_id"
    '    ddorpay.DataSource = ds1
    '    ddorpay.DataBind()
    'End Sub
End Class