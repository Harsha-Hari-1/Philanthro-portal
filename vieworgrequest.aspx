<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site2.Master" CodeBehind="vieworgrequest.aspx.vb" Inherits="PhilanthroPortal.vieworgrequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gvrequest" runat="server" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" PageIndex="4" PageSize="5" AutoGenerateColumns="False" HorizontalAlign="Center" OnRowCommand="gvrequest_RowCommand" DataKeyNames="org_id">
             <Columns>
            <asp:BoundField DataField="org_id" HeaderText="ID" />
            <asp:BoundField DataField="org_name" HeaderText="Organization Name">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
                 <%--<asp:BoundField DataField="mission" HeaderText="Mission">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>--%>
            <asp:BoundField DataField="details" HeaderText="Donation For">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="amount" HeaderText="Amount">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
                 <asp:ButtonField ButtonType="Button" Text="Donate" CommandName="Donate">
            <ItemStyle HorizontalAlign="Center" />
            </asp:ButtonField>
            
            
        </Columns>
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>

</asp:Content>
