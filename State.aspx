<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="State.aspx.vb" Inherits="PhilanthroPortal.State" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 161px;
        height: 29px;
    }
    .auto-style3 {
        height: 29px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; State<table style="width: 99%; height: 41px;">
        <tr>
            <td class="auto-style2">Name</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" Text="Save" style="height: 29px" />
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table>
</p>
</asp:Content>
