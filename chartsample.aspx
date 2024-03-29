<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="chartsample.aspx.vb" Inherits="PhilanthroPortal.chartsample" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <asp:Chart ID="Chart1" runat="server" Height="500px" Width="1333px" Palette="Light">
            <series>
                <asp:Series Name="Series1" XValueMember="org_name" YValueMembers="amount">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1" Visible="True">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
    
    </center>
        
    </div>
    </form>
</body>
</html>
