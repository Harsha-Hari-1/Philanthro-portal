<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="newpostorg.aspx.vb" Inherits="PhilanthroPortal.newpost" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Post</title>
    <style type="text/css">
        .auto-style1 {
            width: 1089px;
        }
        .card-col-12 {
            margin: 20px;
            padding: 20px;
            border-radius: 15px;
            transition: transform 0.3s ease;
            width: 80%; /* Adjust card width */
            height: 350px; /* Adjust card height */
            background: white;
            border: 1px solid #ccc;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .auto-style2 {
            width: 277px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="card-col-12">
    
        
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="post1" runat="server" Text="Organizatation Name"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="orgtxt" runat="server" style="margin-left: 0px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="post2" runat="server" Text="Need donation for "></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="needtxt" runat="server" style="margin-left: 0px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="post3" runat="server" Text="Amount Needed "></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="amttxt" runat="server" style="margin-left: 0px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                   <center> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnpost" runat="server" Text="Post" /></center>
                </td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
