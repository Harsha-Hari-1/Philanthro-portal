Imports System.Data.SqlClient
Imports System.Data
Public Class profileorg
    Inherits System.Web.UI.Page
    Dim co As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim loggedInUser As String = Session("org_id")
            If Not String.IsNullOrEmpty(loggedInUser) Then

                Dim query As String = "SELECT * FROM organization WHERE org_id = @org_id"
                Using cmd As New SqlCommand(query, co.connect())
                    cmd.Parameters.AddWithValue("@org_id", loggedInUser)

                    Using reader As SqlDataReader = cmd.ExecuteReader()
                        If reader.Read() Then
                            orguser.Text = reader("email").ToString()
                            orgname.Text = reader("org_name").ToString()
                            vis.Text = reader("mission").ToString()
                            address.Text = reader("address").ToString()
                            pin.Text = reader("pincode").ToString()
                            ngo.Text = reader("ngo_no").ToString()
                            acc.Text = reader("account").ToString()
                            number.Text = reader("phn_no").ToString()

                        End If
                    End Using
                End Using



            End If
        End If

    End Sub

End Class