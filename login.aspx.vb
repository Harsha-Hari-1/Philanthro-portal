Imports System.Data.SqlClient
Imports System.Data
Public Class loginsam
    Inherits System.Web.UI.Page
    Dim co As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnlog_Click(sender As Object, e As EventArgs) Handles btnlog.Click
        If rbdonar.Checked = True Then
            Dim str As String
            str = "SELECT * FROM  donar WHERE Email = '" + etext.Text + "' AND Password = '" + utext.Text + "' "
            Dim com As SqlCommand = New SqlCommand(str, co.connect)
            Dim sqldaC As SqlDataAdapter = New SqlDataAdapter(com)
            Dim ds As DataTable = New DataTable
            sqldaC.Fill(ds)
            If ds.Rows.Count > 0 Then
                Dim user_id As String = ds.Rows(0)(0).ToString()
                Session("user_id") = user_id
                Response.Redirect("donar2.aspx")
            Else
                Response.Write("<script>alert('Invalid Email or Password');</script>")
            End If

            'If ds.Rows.Count > 0 Then
            '    Response.Redirect("donar2.aspx")
            'Else
            '    Response.Write("<script>alert('Invalid Email or Password');</script>")
            'End If
        ElseIf rborg.Checked = True Then
            Dim str As String
            str = "SELECT * FROM  organization WHERE Email = '" + etext.Text + "' AND Password = '" + utext.Text + "' "
            Dim comm As SqlCommand = New SqlCommand(str, co.connect)
            Dim sqlda As SqlDataAdapter = New SqlDataAdapter(comm)
            Dim dsp As DataTable = New DataTable
            sqlda.Fill(dsp)
            If dsp.Rows.Count > 0 Then
                Response.Redirect("org2.aspx")
            Else
                Response.Write("<script>alert('Invalid Email or Password');</script>")

            End If
        ElseIf rbind.Checked = True Then
            Dim str As String
            str = "SELECT * FROM  individuals WHERE Email = '" + etext.Text + "' AND Password = '" + utext.Text + "' "
            Dim comm As SqlCommand = New SqlCommand(str, co.connect)
            Dim sqlda As SqlDataAdapter = New SqlDataAdapter(comm)
            Dim dsp As DataTable = New DataTable
            sqlda.Fill(dsp)
            If dsp.Rows.Count > 0 Then
                Dim user_id As String = dsp.Rows(0)(0).ToString()
                Session("user_id") = user_id
                Response.Redirect("ind2.aspx")
            Else
                Response.Write("<script>alert('Invalid Email or Password');</script>")
            End If
            'If dsp.Rows.Count > 0 Then
            '    Response.Redirect("ind2.aspx")
            'Else
            '    Response.Write("<script>alert('Invalid Email or Password');</script>")

            'End If
        End If
    End Sub

    Protected Sub lbsigup_Click(sender As Object, e As EventArgs) Handles lbsigup.Click
        If rbdonar.Checked = True Then
            Response.Redirect("newdonar.aspx")
        ElseIf rborg.Checked = True Then
            Response.Redirect("neworga.aspx")
        ElseIf rbind.Checked = True Then
            Response.Redirect("newind.aspx")
        End If
    End Sub
End Class