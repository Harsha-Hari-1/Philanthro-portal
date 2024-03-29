<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site3.Master" CodeBehind="orgtoind.aspx.vb" Inherits="PhilanthroPortal.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 250px;
        }
        .main {
            background-color: grey;
            text-decoration: black;
            width: 75%;
        }
        .bgimg {
            background-image:url("img/carousel-2.jpg");
            width:auto;
            height:auto;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bgimg">
        <center>
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
                    <asp:TextBox ID="otiind" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"style="color:black;">Amount</td>
                <td>
                    <asp:TextBox ID="otiamt" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" style="color:black;">Date</td>
                <td>
                    <asp:TextBox ID="otidate" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="orginpay" runat="server" Text="Pay" style="height: 29px" align="center" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
            </center>
    </div>
        </asp:Content>
