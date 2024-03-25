Imports System.Data.SqlClient
Imports System.Data
Public Class profile
    Inherits System.Web.UI.Page
    Dim co As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim loggedInUser As String = Session("user_id")
            If Not String.IsNullOrEmpty(loggedInUser) Then

                Dim query As String = "SELECT * FROM donar WHERE user_id = @user_id"
                Using cmd As New SqlCommand(query, co.connect())
                    cmd.Parameters.AddWithValue("@user_id", loggedInUser)

                    Using reader As SqlDataReader = cmd.ExecuteReader()
                        If reader.Read() Then
                            user.Text = reader("email").ToString()
                            'lblUsername.Text = reader("Username").ToString()
                            name.Text = reader("name").ToString()
                            address.Text = reader("address").ToString()
                            pin.Text = reader("pincode").ToString()
                            pan.Text = reader("pan_no").ToString()
                            number.Text = reader("phn").ToString()
                            
                        End If
                    End Using
                End Using



            End If
        End If

    End Sub

End Class