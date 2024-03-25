<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site3.Master" CodeBehind="orgdonate.aspx.vb" Inherits="PhilanthroPortal.orgdonate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gd2" runat="server" AllowPaging="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" PageIndex="3" AutoGenerateColumns="False" HorizontalAlign="Center" OnRowCommand="gd2_RowCommand" DataKeyNames="reg_id" SelectedIndex="1">
        <Columns>
            <asp:BoundField DataField="reg_id" HeaderText="Ind Id" />
            <asp:BoundField DataField="iname" HeaderText="Individual Name">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="address" HeaderText="Address">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="pan_no" HeaderText="Pan No">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="conttent" HeaderText="Condition">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="account" HeaderText="Account No">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="phn" HeaderText="Contact No" />
            <asp:ButtonField ButtonType="Button" Text="Donate" CommandName="orgtoind">
            
            <ItemStyle HorizontalAlign="Center" />
            </asp:ButtonField>
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
</asp:Content>
