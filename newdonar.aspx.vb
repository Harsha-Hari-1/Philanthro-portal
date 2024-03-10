Imports System.Data.SqlClient
Imports System.Data
Public Class newdonar
    Inherits System.Web.UI.Page
    Dim con As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            bindstate3()

        End If
        If Not Me.IsPostBack Then

            binddist3()

        End If
        If Not Me.IsPostBack Then

            bindcity3()
        End If
        
    End Sub
    Protected Sub BtndRegister_Click(sender As Object, e As EventArgs) Handles BtndRegister.Click
        Dim instr As String
        instr = "Insert INTO [donar](name,address,pincode,city_id,dis_id,state_id,phn,pan_no,email,password) Values('" + dlname.Text + "','" + daddress.Text + "'," + dpin.Text + " ," + ddlst.SelectedValue + "," + ddlds.SelectedValue + "," + ddlci.SelectedValue + ",'" + dphone.Text + "','" + dpan.Text + "','" + demail.Text + "','" + dpass.Text + "')"
        Dim cmddon As SqlCommand = New SqlCommand(instr, con.connect())
        cmddon.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")

        dlname.Text = ""
        daddress.Text = ""
        dpin.Text = ""
        dphone.Text = ""
        dpan.Text = ""
        demail.Text = ""
        dpass.Text = ""

    End Sub


    Public Sub bindstate3()
        Dim str As String
        str = "select state_id,state from state_list"
        Dim com As SqlCommand = New SqlCommand(str, con.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim dst As DataTable = New DataTable
        sqlda.Fill(dst)
        ddlst.Items.Clear()
        ddlst.DataTextField = "state"
        ddlst.DataValueField = "state_id"
        ddlst.DataSource = dst
        ddlst.DataBind()

    End Sub
    Public Sub binddist3()
        Dim str As String
        str = "select dis_id,state_id,name from district where state_id ='" & ddlst.SelectedValue & "'"
        Dim comn As SqlCommand = New SqlCommand(str, con.connect())
        Dim sqldad As SqlDataAdapter = New SqlDataAdapter(comn)
        Dim dst1 As DataTable = New DataTable
        sqldad.Fill(dst1)
        ddlds.Items.Clear()

        ddlds.DataTextField = "name"
        ddlds.DataValueField = "dis_id"
        ddlds.DataSource = dst1
        ddlds.DataBind()

    End Sub
    Public Sub bindcity3()
        Dim str As String
        str = "select city_id,dis_id,name from city where dis_id ='" & ddlds.SelectedValue & "'"
        Dim comnn As SqlCommand = New SqlCommand(str, con.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(comnn)
        Dim dst2 As DataTable = New DataTable
        sqlda.Fill(dst2)
        ddlci.Items.Clear()

        ddlci.DataTextField = "name"
        ddlci.DataValueField = "city_id"
        ddlci.DataSource = dst2
        ddlci.DataBind()

    End Sub
    Protected Sub ddlstate_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlst.SelectedIndexChanged
        binddist3()
    End Sub

    Protected Sub ddldist_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlds.SelectedIndexChanged
        bindcity3()
    End Sub

    
   
End Class