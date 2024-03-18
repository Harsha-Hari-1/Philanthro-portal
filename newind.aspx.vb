Imports System.Data.SqlClient
Imports System.Data
Imports System.IO

Public Class newind
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
    End Sub

    Protected Sub BtnIRegister_Click(sender As Object, e As EventArgs) Handles BtnIRegister.Click
        Dim instr As String

        instr = "Insert INTO [individuals](iname,address,pincode,state_id,dis_id,city_id,phn,pan_no,conttent,account,email,password) Values('" + ilname.Text + "','" + iaddress.Text + "'," + ipin.Text + " ," + ddst.SelectedValue + "," + ddds.SelectedValue + "," + ddci.SelectedValue + ",'" + iphone.Text + "','" + ipan.Text + "','" + icond.Text + "','" + iacc.Text + "','" + iemail.Text + "','" + ipass.Text + "');SELECT SCOPE_IDENTITY()"
        Dim cmddon As SqlCommand = New SqlCommand(instr, con.connect())
        Dim currentID As Integer = cmddon.ExecuteScalar()
        If UploadImages.HasFiles Then
            For Each uploadedFile As HttpPostedFile In UploadImages.PostedFiles
                uploadedFile.SaveAs(Path.Combine(Server.MapPath("~/doc/"), uploadedFile.FileName))
                listofuploadedfiles.Text += String.Format("{0}<br />", uploadedFile.FileName)
            Next
        End If
        Dim pth As String = "~/doc/" + UploadImages.FileName
        Dim sup As String
        sup = "Insert into support(reg_id,files) values(" + currentID.ToString + ",'" + pth + "') "
        Dim cmd As SqlCommand = New SqlCommand(sup, con.connect())
        cmd.ExecuteNonQuery()
        Response.Write("<script>alert('data saved');</script>")

        ilname.Text = ""
        iaddress.Text = ""
        ipin.Text = ""
        iphone.Text = ""
        ipan.Text = ""
        icond.Text = ""

        iacc.Text = ""
        iemail.Text = ""
        ipass.Text = ""
        

        
    End Sub
    Public Sub bindstate2()
        Dim str As String
        str = "select state_id,state from state_list"
        Dim com As SqlCommand = New SqlCommand(str, con.connect())
        Dim sqlda As SqlDataAdapter = New SqlDataAdapter(com)
        Dim dt As DataTable = New DataTable
        sqlda.Fill(dt)
        ddst.Items.Clear()
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

        ddci.DataTextField = "name"
        ddci.DataValueField = "city_id"
        ddci.DataSource = ds3
        ddci.DataBind()


    End Sub
    Protected Sub ddst_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddst.SelectedIndexChanged
        binddist2()
    End Sub

    Protected Sub ddds_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddds.SelectedIndexChanged
        bindcity2()
    End Sub

   
    'Private Function cmd() As Object
    '    Throw New NotImplementedException
    'End Function

    'Private Function reg_id() As String
    '    Throw New NotImplementedException
    'End Function

    

End Class