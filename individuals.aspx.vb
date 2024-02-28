Imports System.Data.SqlClient
Imports System.Data
Public Class individuals
    Inherits System.Web.UI.Page
    Dim con As philanthro = New philanthro

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
        If Not Me.IsPostBack Then
            bindstate2()
            
        End If
        If Not Me.IsPostBack Then

            binddist2()

        End If
        If Not Me.IsPostBack Then
            bindcity2()
        End If
        If Not Me.IsPostBack Then
            grid()
        End If
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles BtnIRegister.Click
        Dim instr As String
        instr = "Insert INTO [individuals](iname,address,pincode,state_id,dis_id,city_id,phn,pan_no,conttent,sup_id,account,email,password) Values('" + ilname.Text + "','" + iaddress.Text + "'," + ipin.Text + " ," + ddst.SelectedValue + "," + ddds.SelectedValue + "," + ddci.SelectedValue + ",'" + iphone.Text + "','" + ipan.Text + "','" + icond.Text + "'," + isup.Text + ",'" + iacc.Text + "','" + iemail.Text + "','" + ipass.Text + "')"
        Dim cmddon As SqlCommand = New SqlCommand(instr, con.connect())
        cmddon.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")

        ilname.Text = ""
        iaddress.Text = ""
        ipin.Text = ""
        iphone.Text = ""
        ipan.Text = ""
        icond.Text = ""
        isup.Text = ""
        iacc.Text = ""
        iemail.Text = ""
        ipass.Text = ""
        grid()
    End Sub
    Public Sub bindstate2()
        Dim str As String
        str = "select state_id,state from state_list"
        Dim com As SqlCommand = New SqlCommand(str, con.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim dt As DataTable = New DataTable
        sqlda.Fill(dt)
        ddst.Items.Clear()
        ddst.Items.Add("--Select--")
        ddst.DataTextField = "state"
        ddst.DataValueField = "state_id"
        ddst.DataSource = dt
        ddst.DataBind()
        
    End Sub
    Public Sub binddist2()
        Dim str As String
        str = "select dis_id,state_id,name from district where state_id ='" & ddst.SelectedValue & "' "
        Dim comn As SqlCommand = New SqlCommand(str, con.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(comn)
        Dim dt1 As DataTable = New DataTable
        sqlda.Fill(dt1)
        ddds.Items.Clear()
        ddds.Items.Add("--Select--")
        ddds.DataTextField = "name"
        ddds.DataValueField = "dis_id"
        ddds.DataSource = dt1
        ddds.DataBind()
        
    End Sub
    Public Sub bindcity2()
        Dim str As String
        str = "select city_id,name,dis_id,state_id from city where dis_id ='" & ddds.SelectedValue & "'"
        Dim comnn As SqlCommand = New SqlCommand(str, con.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(comnn)
        Dim ds3 As DataTable = New DataTable
        sqlda.Fill(ds3)
        ddci.Items.Clear()
        ddci.Items.Add("--Select--")
        ddci.DataTextField = "name"
        ddci.DataValueField = "city_id"
        ddci.DataSource = ds3
        ddci.DataBind()

        
    End Sub
    Public Sub grid()


        Dim str As String
        str = "select iname,address,pincode,phn,pan_no,account,email,conttent from individuals"
        Dim cmd As SqlCommand = New SqlCommand(str, con.connect())
        Dim ad As SqlDataAdapter = New SqlDataAdapter(cmd)
        Dim at As DataTable = New DataTable
        ad.Fill(at)
        gvind.DataSource = at
        gvind.DataBind()

    End Sub
    Protected Sub ddst_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddst.SelectedIndexChanged
        binddist2()
    End Sub

    Protected Sub ddds_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddds.SelectedIndexChanged
        bindcity2()
    End Sub

    Protected Sub GridView1_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles gvind.PageIndexChanging
        gvind.PageIndex = e.NewPageIndex
        grid()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gvind.SelectedIndexChanged

    End Sub
End Class