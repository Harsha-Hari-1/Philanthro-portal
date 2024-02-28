<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="log.aspx.vb" Inherits="PhilanthroPortal.log" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 154px;
        }
        .auto-style2 {
            width: 154px;
            height: 26px;
        }
        .auto-style3 {
            width: 182px;
            height: 26px;
        }
        .auto-style4 {
            width: 182px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" style="width:38%; background-color:aliceblue;flex-align:center; height: 360px; background-image: url('img/blog-1.jpg');" >
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Philanthro Portal<br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rbdonar" runat="server" Text="Donar" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rborg" runat="server" Text="Organization" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rbind" runat="server" Text="Individual" />
        <br />
        <br />
&nbsp;<table style="width:76%; background-color:aliceblue;flex-align:center" align="center">
            <tr>
                <td class="auto-style3">Email</td>
                <td class="auto-style2">
                    <asp:TextBox ID="etext" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Password</td>
                <td class="auto-style1">
                    <asp:TextBox ID="utxt" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;
                    </td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:LinkButton ID="LinkButton2" runat="server">Forgot Password</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style1">
                    <asp:Button ID="btlog" runat="server" Text="Login" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">New Registration? 
                </td>
                <td class="auto-style1"> <asp:LinkButton ID="lbsigup" runat="server">Sigup</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
