<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="city.aspx.vb" Inherits="PhilanthroPortal.city" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 152px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; City<table style="width: 100%;">
        <tr>
            <td class="auto-style1">City Name</td>
            <td>
                <asp:TextBox ID="txtcity" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">District Id</td>
            <td>
                <asp:DropDownList ID="dcitydis" runat="server" Width="165px" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">sState id</td>
            <td>
                <asp:DropDownList ID="dcitysta" runat="server" Width="165px" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Save" style="width: 54px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</p>
</asp:Content>
