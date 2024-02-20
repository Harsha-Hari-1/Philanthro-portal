<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="login.aspx.vb" Inherits="PhilanthroPortal.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        height: 29px;
    }
        .auto-style5 {
            height: 26px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:23%; background-color:aliceblue">
    <tr>
        <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login</td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Donar" />
&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" Text="Organization" />
&nbsp;<asp:RadioButton ID="RadioButton3" runat="server" Text="Individual" />
        </td>
    </tr>
    <tr>
        <td>Email</td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="227px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Password</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox4" runat="server" Width="227px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="BtnLogin" runat="server" BorderStyle="Solid" Text="Login" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:LinkButton ID="LinkButton1" runat="server">Forgot Password</asp:LinkButton>
        </td>
    </tr>
</table>
</asp:Content>
