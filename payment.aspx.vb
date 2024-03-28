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
        ' Set the amount to pay

        ' Perform validation (e.g., check if fields are not empty, validate card number format, etc.)
        ' For simplicity, we assume validation passes in this example

        ' Simulate payment success
        Dim paymentSuccess As Boolean = SimulatePayment(amount)

        If paymentSuccess Then
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

    Private Function SimulatePayment(amount As Decimal) As Boolean
        Return True
    End Function

End Class