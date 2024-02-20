Imports System.Data.SqlClient
Imports System.Data
Public Class organization
    Inherits System.Web.UI.Page
    Dim co As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
        If Not Me.IsPostBack Then
            bindstate()
            
        End If
        If Not Me.IsPostBack Then

            binddist1()

        End If
        If Not Me.IsPostBack Then
            
            bindcity1()
        End If
        If Not Me.IsPostBack Then

            bindgrid()
        End If
    End Sub
    Protected Sub BtnORegister_Click(sender As Object, e As EventArgs) Handles BtnORegister.Click
        Dim instr As String
        instr = "Insert INTO organization(org_name,mission,email,address,pincode,state_id,dis_id,city_id,ngo_no,phn_no,account,passward) Values('" + oname.Text + "','" + omission.Text + "','" + oemail.Text + "','" + oaddress.Text + "'," + opin.Text + " ," + ddlstate.SelectedValue + "," + ddldist.SelectedValue + "," + ddlcity.SelectedValue + ",'" + ongo.Text + "','" + ophone.Text + "','" + oacc.Text + "','" + opass.Text + "')"
        Dim cmdo As SqlCommand = New SqlCommand(instr, co.connect())
        cmdo.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        oname.Text = ""
        omission.Text = ""
        oemail.Text = ""
        oaddress.Text = ""
        opin.Text = ""
        ongo.Text = ""
        oacc.Text = ""
        opass.Text = ""
        ophone.Text = ""
        bindgrid()

    End Sub
    Public Sub bindstate()
        Dim str As String
        str = "select state_id,name from state"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim ds1 As DataTable = New DataTable
        sqlda.Fill(ds1)
        ddlstate.Items.Clear()
        ddlstate.Items.Add("--Select--")
        ddlstate.DataTextField = "name"
        ddlstate.DataValueField = "state_id"
        ddlstate.DataSource = ds1
        ddlstate.DataBind()
        
    End Sub
    Public Sub binddist1()
        Dim str As String
        str = "select dis_id,state_id,name from district where state_id ='" & ddlstate.SelectedValue & "'"
        Dim comn As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(comn)
        Dim ds2 As DataTable = New DataTable
        sqlda.Fill(ds2)
        ddldist.Items.Clear()
        ddldist.Items.Add("--Select--")
        ddldist.DataTextField = "name"
        ddldist.DataValueField = "dis_id"
        ddldist.DataSource = ds2
        ddldist.DataBind()

    End Sub
    Public Sub bindcity1()
        Dim str As String
        str = "select city_id,name,dis_id,state_id from city where dis_id ='" & ddldist.SelectedValue & "'"
        Dim comnn As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(comnn)
        Dim ds3 As DataTable = New DataTable
        sqlda.Fill(ds3)
        ddlcity.Items.Clear()
        ddlcity.Items.Add("--Select--")
        ddlcity.DataTextField = "name"
        ddlcity.DataValueField = "city_id"
        ddlcity.DataSource = ds3
        ddlcity.DataBind()
        
    End Sub
    Public Sub bindgrid()


        Dim str As String
        str = "select org_name,email,address,pincode,state_id,dis_id,city_id,ngo_no,account,phn_no from organization"
        Dim cmd As SqlCommand = New SqlCommand(str, co.connect())
        Dim ad As SqlDataAdapter = New SqlDataAdapter(cmd)
        Dim ap As DataTable = New DataTable
        ad.Fill(ap)
        gvorg.DataSource = ap
        gvorg.DataBind()

    End Sub




    Protected Sub ddlstate_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlstate.SelectedIndexChanged
        binddist1()
    End Sub

    Protected Sub ddldist_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddldist.SelectedIndexChanged
        bindcity1()
    End Sub



    Protected Sub GridView1_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles gvorg.PageIndexChanging
        gvorg.PageIndex = e.NewPageIndex
        bindgrid()
    End Sub
End Class