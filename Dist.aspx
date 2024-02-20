<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Dist.aspx.vb" Inherits="PhilanthroPortal.Dist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 167px;
    }
    .auto-style2 {
        width: 167px;
        height: 29px;
    }
    .auto-style3 {
        height: 29px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; District</p>
<p>
    <table style="width: 100%;">
        <tr>
            <td class="auto-style2">District Name</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtdist" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style1">State </td>
            <td>
                <asp:DropDownList ID="ddistst" runat="server" Width="165px" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Save" style="height: 29px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</p>
</asp:Content>
