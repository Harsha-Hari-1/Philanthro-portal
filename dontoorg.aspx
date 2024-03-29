<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="dontoorg.aspx.vb" Inherits="PhilanthroPortal.dontoorg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 250px;
        }
        .bgm {
            background-image:url("img/carousel-3.jpg");
            width:auto;
            height:auto;
        }
        .main {
            background-color:skyblue;
            text-decoration:black;
            width:70%;
            flex-align:center;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bgm">
    <center>
    <p color="black"><b>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Donation To Organization</b></p>

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
                <td><asp:TextBox ID="txtorg" runat="server" Enabled="False"></asp:TextBox></td>
                
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
       
       </center>     
   </div>
</asp:Content>
