<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="dontoorg.aspx.vb" Inherits="PhilanthroPortal.dontoorg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 225px;
        }
        .main {
            background-color:aquamarine;
            text-decoration:black;
            width:75%;


        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Donation To Organization</p>

        <div class="main">
             <table style="width:100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" style="color:black;">Organization Name</td>
                <td>
                    <asp:DropDownList ID="ddorpay" runat="server" Width="170px">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" style="color:black;">Amount</td>
                <td>
                    <asp:TextBox ID="dtoamt" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" style="color:black;">Date</td>
                <td>
                    <asp:TextBox ID="dtodate" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="orgpay" runat="server" Text="Pay" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
       
            
   
</asp:Content>
