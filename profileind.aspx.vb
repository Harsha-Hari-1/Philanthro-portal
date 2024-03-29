Imports System.Data.SqlClient
Imports System.Data
Public Class profileind
    Inherits System.Web.UI.Page
    Dim co As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim loggedInUser As String = Session("reg_id")
            If Not String.IsNullOrEmpty(loggedInUser) Then

                Dim query As String = "SELECT * FROM individuals WHERE reg_id = @reg_id"
                Using cmd As New SqlCommand(query, co.connect())
                    cmd.Parameters.AddWithValue("@reg_id", loggedInUser)

                    Using reader As SqlDataReader = cmd.ExecuteReader()
                        If reader.Read() Then
                            induser.Text = reader("email").ToString()
                            indname.Text = reader("iname").ToString()
                            'Session("ind_name") = reader("iname").ToString()
                            cont.Text = reader("conttent").ToString()
                            address.Text = reader("address").ToString()
                            pin.Text = reader("pincode").ToString()
                            pan.Text = reader("pan_no").ToString()
                            acc1.Text = reader("account").ToString()
                            number.Text = reader("phn").ToString()

                        End If
                    End Using
                End Using



            End If
        End If
    End Sub

    'Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
    '    Dim selectedValue As String = DropDownList1.SelectedValue
    '    Select Case selectedValue
    '        Case "1"
    '            Response.Redirect("indfromdonar.aspx")
    '        Case "2"
    '            Response.Redirect("indfromorg.aspx")
    '    End Select
    'End Sub
End Class