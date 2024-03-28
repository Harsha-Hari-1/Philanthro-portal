<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="mfund.aspx.vb" Inherits="PhilanthroPortal.mfund" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 189px;
        }
        .auto-style2 {
            width: 189px;
            height: 32px;
        }
        .auto-style3 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Monthly Analysis</p>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Organization Name</td>
                <td>
                    <asp:DropDownList ID="ddlmfund" runat="server" Width="165px">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Date</td>
                <td class="auto-style3">
                    <asp:TextBox ID="madate" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Btncompute" runat="server" Text="Compute" style="height: 29px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
</asp:Content>
