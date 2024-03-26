<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="dontoind.aspx.vb" Inherits="PhilanthroPortal.dontoind" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 250px;
        }
        .bg {
            background-image:url("img/carousel-3.jpg")
        }
        .main {
            background-color: skyblue;
            text-decoration: black;
            width: 70%;
            flex-align: center;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg">
    <center>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Donation To Individuals</p>
    <div class="main"><table style="width:115%;">
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
           <%-- <tr>
                <td class="auto-style1" style="color:black;">Donar Name</td>
                 <td>
                     <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>--%>
            <tr>
                <td class="auto-style1" style="color:black;">Individual Name</td>
                <td>
                    <asp:TextBox ID="txtind" runat="server" Enabled="False"></asp:TextBox>
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
                   <center> <asp:Button ID="indpay" runat="server" Text="Pay" style="height: 29px"  /></center>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
        </center>
        </div>
</asp:Content>
