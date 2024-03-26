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
        'Dim paymentSuccess As Boolean = SimulatePayment(amount)

       If ValidateCreditCard(cardNumber) Then
            ' Valid credit card
            Response.Write("<script>alert('Credit card is valid.');</script>")
            ' Proceed with payment processing or other actions
        Else
            ' Invalid credit card
            Response.Write("<script>alert('Invalid credit card number. Please check and try again.');</script>")
            ' Optionally, clear the input field or display an error message
        End If
    End Sub

    Private Function ValidateCreditCard(cardNumber As String) As Boolean
        ' Remove any non-numeric characters from the card number
        Dim cleanedCardNumber As String = cardNumber.Replace(" ", "")

        ' Check if the card number is numeric and has a valid length (typically between 13 and 19 digits for major cards)
        If Not IsNumeric(cleanedCardNumber) OrElse cleanedCardNumber.Length < 13 OrElse cleanedCardNumber.Length > 19 Then
            Return False
        End If

        ' Additional checks based on card type or issuer can be added here

        ' Example: Check if the card number starts with a valid prefix for a specific card type (e.g., Visa starts with 4)
        If Not cleanedCardNumber.StartsWith("4") Then
            Return False
        End If

        ' Example: Perform a checksum validation for a specific card type (e.g., Luhn algorithm for most cards)
        ' Note: The Luhn algorithm is a basic checksum validation and may not catch all errors in a real-world scenario
        Dim sum As Integer = 0
        Dim shouldDouble As Boolean = False
        For i As Integer = cleanedCardNumber.Length - 1 To 0 Step -1
            Dim digit As Integer = Integer.Parse(cleanedCardNumber(i).ToString())
            If shouldDouble Then
                digit *= 2
                If digit > 9 Then
                    digit -= 9
                End If
            End If
            sum += digit
            shouldDouble = Not shouldDouble
        Next

        Return sum Mod 10 = 0
    End Function

End Class