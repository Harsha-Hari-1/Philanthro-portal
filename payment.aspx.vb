Imports System.Data.SqlClient
Imports System.Data
Imports System
Public Class payment
    Inherits System.Web.UI.Page
    Dim con As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnPay_Click(sender As Object, e As EventArgs) Handles btnPay.Click
        Dim cardNumber As String = txtCardNumber.Text.Trim()
        Dim expiry As String = txtExpiry.Text.Trim()
        Dim cvv As String = txtCVV.Text.Trim()
        Dim amount As Decimal = txtamt.Text.Trim()
        'Dim paymentSuccess As Boolean = SimulatePayment(amount)

        If ValidateCreditCardNumber() = True Then
            ' Payment successful
            ' You can redirect to a success page or display a success message
            Response.Write("<script>alert('Payment Success');</script>")

        Else
            ' Payment failed
            ' You can display an error message or handle the failure as needed
            Response.Write("<script>alert('Payment failed. Please try again.');</script>")
            'lblResult.Text = "Payment failed. Please try again."
        End If
        'Response.Redirect("donar2.aspx")
    End Sub
    Function ValidateCreditCardNumber(ByVal cardNumber As String) As Boolean
        If String.IsNullOrWhiteSpace(cardNumber) Then
            Return False
        End If
        Dim rev As System.Collections.Generic.IEnumerable(Of Char) = cardNumber.Reverse
        Dim sum As Integer = 0, i As Integer = 0, c As Char
        For Each c In rev
            Dim a As Integer = Asc(c)
            If a < 48 OrElse a > 57 Then
                Return False
            End If
            Dim tmp As Integer = a - 48
            If (i Mod 2) <> 0 Then
                tmp *= 2
                If tmp > 9 Then
                    tmp -= 9
                End If
            End If
            sum += tmp
            i += 1
        Next
        If (sum Mod 10) <> 0 Then
            Return False
        Else
            Return True
        End If
    End Function
    

    Private Function SimulatePayment(amount As Decimal) As Boolean
        Return True
    End Function

    Private Function ValidateCreditCardNumber() As Boolean
        Return True
    End Function

End Class