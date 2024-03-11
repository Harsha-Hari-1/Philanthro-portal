<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Support.aspx.vb" Inherits="PhilanthroPortal.Support" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 201px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
         <div>  
   <asp:FileUpload runat="server" ID="UploadImages" AllowMultiple="true" />  
   <asp:Button runat="server" ID="uploadedFile" Text="Upload" OnClick="uploadFile_Click" />  
   <asp:Label ID="listofuploadedfiles" runat="server" />  
</div> 
    Supporting Documents<table style="width: 100%;">
        <tr>
            <td class="auto-style1">Individual Id</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Files</td>
            <td>
              
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Save" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</p>
</asp:Content>
