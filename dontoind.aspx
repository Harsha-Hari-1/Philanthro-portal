<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="dontoind.aspx.vb" Inherits="PhilanthroPortal.dontoind" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 250px;
        }
         .main {
            background-color:grey;
            text-decoration:black;
            width:75%;

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Donation To Individuals</p>
    <div class="main"><table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
           <%-- <tr>
                <td class="auto-style1" style="color:black;">User Type</td>
                <td>
                    <asp:DropDownList ID="ddluser" runat="server" Width="168px">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>--%>
            <tr>
                <td class="auto-style1" style="color:black;">Donar Name</td>
                 <td>
                     <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" style="color:black;">Individual Name</td>
                <td>
                    <asp:TextBox ID="txtind" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"style="color:black;">Amount</td>
                <td>
                    <asp:TextBox ID="dtiamt" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" style="color:black;">Date</td>
                <td>
                    <asp:TextBox ID="dtidate" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="indpay" runat="server" Text="Pay" style="height: 29px" align="center" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
        
</asp:Content>
