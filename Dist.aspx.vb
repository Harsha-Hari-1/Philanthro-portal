Imports System.Data.SqlClient
Imports System.Data
Public Class Dist
    Inherits System.Web.UI.Page
    Dim con As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Me.IsPostBack Then
            state()
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim instr As String
        instr = "Insert INTO district(name,state_id) Values('" + txtdist.Text + "'," + ddistst.SelectedValue + ")"
        Dim cmdo As SqlCommand = New SqlCommand(instr, con.connect())
        cmdo.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")

    End Sub
    Public Sub state()
        Dim str As String
        str = "select state_id,name from state"
        Dim com As SqlCommand = New SqlCommand(str, con.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim ds1 As DataTable = New DataTable
        sqlda.Fill(ds1)
        ddistst.DataTextField = "name"
        ddistst.DataValueField = "state_id"
        ddistst.DataSource = ds1
        ddistst.DataBind()
    End Sub



End Class