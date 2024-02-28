<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site3.Master" CodeBehind="organization.aspx.vb" Inherits="PhilanthroPortal.organization" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 206px;
        }
        .auto-style3 {
            width: 206px;
            height: 29px;
        }
        .auto-style4 {
            width: 680px;
            height: 29px;
        }
        .auto-style5 {
            width: 206px;
            height: 114px;
        }
        .auto-style6 {
            width: 680px;
            height: 114px;
        }
        .auto-style7 {
            width: 680px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REGISTRAION</p>
    <p>
        <table style="background-color:lightpink; flex-align:center; width: 963px;" align="center" >
            <tr>
                <td class="auto-style1">Organization Name</td>
                <td class="auto-style7">
                    <asp:TextBox ID="oname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Mission</td>
                <td class="auto-style7">
                    <asp:TextBox ID="omission" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Mail Id</td>
                <td class="auto-style7">
                    <asp:TextBox ID="oemail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Address</td>
                <td class="auto-style7">
                    <asp:TextBox ID="oaddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Pincode</td>
                <td class="auto-style7">
                    <asp:TextBox ID="opin" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">State</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="ddlstate" runat="server" Width="167px" AutoPostBack="True">
                    </asp:DropDownList>
                &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style1">District</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="ddldist" runat="server" Width="166px" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">City</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="ddlcity" runat="server" Width="168px" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">NGO No</td>
                <td class="auto-style7">
                    <asp:TextBox ID="ongo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Account No</td>
                <td class="auto-style7">
                    <asp:TextBox ID="oacc" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Password</td>
                <td class="auto-style7">
                    <asp:TextBox ID="opass" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Phone No</td>
                <td class="auto-style7">
                    <asp:TextBox ID="ophone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">
                    <asp:Button ID="BtnORegister" runat="server" Text="Register" style="height: 29px" />
                    <asp:GridView ID="gvorg" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AllowPaging="True" PageIndex="3" PageSize="5" Width="761px">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="org_name" HeaderText="Organoization Name" />
                            <asp:BoundField DataField="email" HeaderText="Mail Id" />
                            <asp:BoundField DataField="address" HeaderText="Address" />
                            <asp:BoundField DataField="pincode" HeaderText="Pincode" />
                            <asp:BoundField DataField="state_id" HeaderText="State" />
                            <asp:BoundField DataField="dis_id" HeaderText="District" />
                            <asp:BoundField DataField="city_id" HeaderText="City" />
                            <asp:BoundField DataField="ngo_no" HeaderText="NGO No" />
                            <asp:BoundField DataField="account" HeaderText="Account No" />
                            <asp:BoundField DataField="phn_no" HeaderText="Phone No" />
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
    </p>
</asp:Content>
