Imports System.Net
Imports System.Net.Mail
Public Class email
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim emailSender As New email()
        emailSender.SendEmail()
        lblStatus.Text = "Email Sent Successfully!" ' Display a success message
    End Sub
    Public Sub SendEmail()
        Try
            Dim fromAddress As New MailAddress("harsha.inmca1924@saintgits.org", "Harsha Hari")
            Dim toAddress As New MailAddress("harshahari687@gmail.com", "Recipient Name")
            Dim subject As String = "Subject of the Email"
            Dim body As String = "Body of the Email"

            Dim smtpClient As New SmtpClient()
            smtpClient.Host = "smtp.gmail.com" 'Specify your SMTP server address
            smtpClient.Port = 587 'Specify the port number
            smtpClient.EnableSsl = True 'Enable SSL
            smtpClient.Credentials = New NetworkCredential("harsha.inmca1924@saintgits.org", "harsha@4") 'Specify your email credentials

            Dim mailMessage As New MailMessage(fromAddress, toAddress)
            mailMessage.Subject = subject
            mailMessage.Body = body

            smtpClient.Send(mailMessage)
            ' Optionally, you can handle success or provide feedback to the user.
            ' Response.Write("Email Sent Successfully!")
        Catch ex As Exception
            ' Handle exception
            ' Response.Write("Email Sending Failed: " & ex.Message)
        End Try
    End Sub
End Class
