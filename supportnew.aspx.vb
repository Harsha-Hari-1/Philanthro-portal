Imports System.IO

Public Class supportnew
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub uploadFile_Click(sender As Object, e As EventArgs) Handles uploadedFile.Click
        If UploadImages.HasFiles Then
            For Each uploadedFile As HttpPostedFile In UploadImages.PostedFiles
                uploadedFile.SaveAs(Path.Combine(Server.MapPath("~/doc/"), uploadedFile.FileName))
                listofuploadedfiles.Text += String.Format("{0}<br />", uploadedFile.FileName)
            Next
        End If
        `
    End Sub
End Class