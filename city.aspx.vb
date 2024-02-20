Imports System.Data.SqlClient
Imports System.Data
Public Class city
    Inherits System.Web.UI.Page
    Dim con As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
        If Not Me.IsPostBack Then
            dist()
            sta()
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim instr As String
        instr = "Insert INTO city(name,dis_id,state_id) Values('" + txtcity.Text + "'," + dcitydis.SelectedValue + "," + dcitysta.SelectedValue + ")"
        Dim cmdo As SqlCommand = New SqlCommand(instr, con.connect)
        cmdo.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
    End Sub
    Public Sub dist()
        Dim str As String
        str = "select dis_id,name from district"
        Dim com As SqlCommand = New SqlCommand(str, con.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim ds1 As DataTable = New DataTable
        sqlda.Fill(ds1)
        dcitydis.DataTextField = "name"
        dcitydis.DataValueField = "dis_id"
        dcitydis.DataSource = ds1
        dcitydis.DataBind()
    End Sub
    Public Sub sta()
        Dim strt As String
        strt = "select state_id,name from state"
        Dim comd As SqlCommand = New SqlCommand(strt, con.connect())
        Dim sqldas As SqlDataAdapter = New SqlDataAdapter(comd)
        Dim ds2 As DataTable = New DataTable
        sqldas.Fill(ds2)
        dcitysta.DataTextField = "name"
        dcitysta.DataValueField = "state_id"
        dcitysta.DataSource = ds2
        dcitysta.DataBind()
    End Sub
End Class