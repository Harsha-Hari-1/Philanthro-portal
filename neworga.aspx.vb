Imports System.Data.SqlClient
Imports System.Data
Imports System.IO

Public Class neworga
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

    End Sub

    Protected Sub BtnORegister_Click(sender As Object, e As EventArgs) Handles BtnORegister.Click
        Dim instrs As String
        instrs = "Insert INTO organization(org_name,mission,email,address,pincode,state_id,dis_id,city_id,ngo_no,phn_no,account,password) Values('" + oname.Text + "','" + omission.Text + "','" + oemail.Text + "','" + oadd.Text + "'," + opin.Text + " ," + ddlstate.SelectedValue + "," + ddldist.SelectedValue + "," + ddlcity.SelectedValue + ",'" + ongo.Text + "','" + ophone.Text + "','" + oacc.Text + "','" + opass.Text + "');SELECT SCOPE_IDENTITY()"
        Dim cmdond As SqlCommand = New SqlCommand(instrs, co.connect())
        Dim currentID As Integer = cmdond.ExecuteScalar()
        If docorg.HasFiles Then
            For Each uploadedFile As HttpPostedFile In docorg.PostedFiles
                uploadedFile.SaveAs(Path.Combine(Server.MapPath("~/doc/"), uploadedFile.FileName))
                listofuploaded.Text += String.Format("{0}<br />", uploadedFile.FileName)
            Next
        End If
        Dim pthorg As String = "~/doc/" + docorg.FileName
        Dim suporg As String
        suporg = "Insert into sup_org(org_id,sup_file) values(" + currentID.ToString + ",'" + pthorg + "') "
        Dim cmd As SqlCommand = New SqlCommand(suporg, co.connect())
        cmd.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")
        oname.Text = ""
        omission.Text = ""
        oemail.Text = ""
        oadd.Text = ""
        opin.Text = ""

        ongo.Text = ""
        oacc.Text = ""
        opass.Text = ""
        ophone.Text = ""
    End Sub
    Public Sub bindstate()
        Dim str As String
        str = "select state_id,state from state_list"
        Dim com As SqlCommand = New SqlCommand(str, co.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim ds1 As DataTable = New DataTable
        sqlda.Fill(ds1)
        ddlstate.Items.Clear()

        ddlstate.DataTextField = "state"
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

        ddlcity.DataTextField = "name"
        ddlcity.DataValueField = "city_id"
        ddlcity.DataSource = ds3
        ddlcity.DataBind()

    End Sub

    Protected Sub ddlstate_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlstate.SelectedIndexChanged
        binddist1()
    End Sub

    Protected Sub ddldist_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddldist.SelectedIndexChanged
        bindcity1()
    End Sub

End Class