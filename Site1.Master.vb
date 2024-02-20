Public Class Site1
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Menu1_MenuItemClick(sender As Object, e As MenuEventArgs) Handles Menu2.MenuItemClick
        Dim s As String
        s = Menu2.SelectedItem.Text
        If s = "Donar" Then
            Response.Redirect("Donar.aspx")
        ElseIf s = "Organization" Then
            Response.Redirect("organization.aspx")
        ElseIf s = "Individual" Then
            Response.Redirect("individuals.aspx")
        ElseIf s = "Donate to Organization" Then
            Response.Redirect("dontoorg.aspx")
        ElseIf s = "Donate to Company" Then
            Response.Redirect("dontopro.aspx")
        ElseIf s = "Donate to Individual" Then
            Response.Redirect("dontoind.aspx")
        ElseIf s = "Fund Analysis" Then
            Response.Redirect("fund.aspx")
        ElseIf s = "Monthly Analysis" Then
            Response.Redirect("mfund.aspx")
        ElseIf s = "Login" Then
            Response.Redirect("login.aspx")
        ElseIf s = "Forgot Password" Then
            Response.Redirect("forgotpass.aspx")
        ElseIf s = "State" Then
            Response.Redirect("State.aspx")
        ElseIf s = "District" Then
            Response.Redirect("Dist.aspx")
        ElseIf s = "City" Then
            Response.Redirect("city.aspx")
        ElseIf s = "Support" Then
            Response.Redirect("Support.aspx")
        ElseIf s = "Type" Then
            Response.Redirect("type.aspx")
        End If
    End Sub
End Class