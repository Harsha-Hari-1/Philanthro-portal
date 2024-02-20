Imports System.Data.SqlClient
Imports System.Data
Public Class dontoind
    Inherits System.Web.UI.Page
    Dim con As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        
        Dim instr As String
        instr = "Insert INTO dontoind(user_type,user_id,reg_id,amount,date) Values(" + ddluser.SelectedValue + "," + txtdo.Text + ",'" + dindividual.Text + "','" + dtiamt.Text + "','" + dtidate.Text + "')"
        Dim cmdo As SqlCommand = New SqlCommand(instr, con.connect())
        cmdo.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
    End Sub
    Public Sub type()
        Dim str As String
        str = "select type_id,name from user_type"
        Dim com As SqlCommand = New SqlCommand(str, con.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim dt As DataTable = New DataTable
        sqlda.Fill(dt)
        ddluser.Items.Clear()
        ddluser.Items.Add("--Select--")
        ddluser.DataTextField = "name"
        ddluser.DataValueField = "type_id"
        ddluser.DataSource = dt
        ddluser.DataBind()
        

    End Sub
    
End Class