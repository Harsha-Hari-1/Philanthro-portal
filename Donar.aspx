<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site2.Master" CodeBehind="Donar.aspx.vb" Inherits="PhilanthroPortal.Donar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 210px;
        }
        .auto-style2 {
            width: 210px;
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
            width: 600px;
        }
        .auto-style4 {
            width: 600px;
        }
        .auto-style5 {
            width: 210px;
            height: 29px;
        }
        .auto-style6 {
            width: 600px;
            height: 29px;
        }
    .auto-style7 {
        width: 210px;
        height: 32px;
    }
    .auto-style8 {
        width: 600px;
        height: 32px;
    }
    .auto-style9 {
        width: 210px;
        height: 23px;
    }
    .auto-style10 {
        height: 23px;
        width: 600px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;
    <table border="0" style="width: 59%;background-color:lightpink" align="center">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">REGISTRATION</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Last Name</td>
            <td class="auto-style4">
                <asp:TextBox ID="dlname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Address</td>
            <td class="auto-style8">
                <asp:TextBox ID="daddress" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Pincode</td>
            <td class="auto-style4">
                <asp:TextBox ID="dpin" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">State</td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddlst" runat="server" Width="163px" AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">District</td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddlds" runat="server" Width="163px" AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">City</td>
            <td class="auto-style6">
                <asp:DropDownList ID="ddlci" runat="server" Width="163px" AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Phone No</td>
            <td class="auto-style4">
                <asp:TextBox ID="dphone" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Pan No</td>
            <td class="auto-style4">
                <asp:TextBox ID="dpan" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Email</td>
            <td class="auto-style4" style="font-weight: 700">
                <asp:TextBox ID="demail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Password</td>
            <td class="auto-style4">
                <asp:TextBox ID="dpass" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="BtndRegister" runat="server" Text="Register" />
            &nbsp;&nbsp;
                <asp:GridView ID="gvd" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" PageIndex="3" PageSize="4">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="Name" />
                        <asp:BoundField DataField="address" HeaderText="Address" />
                        <asp:BoundField DataField="pincode" HeaderText="Pincode" />
                        <asp:BoundField DataField="phn" HeaderText="Phone No" />
                        <asp:BoundField DataField="pan_no" HeaderText="Pan No" />
                        <asp:BoundField DataField="email" HeaderText="Email" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                </td>
        </tr>
    </table>
</asp:Content>
