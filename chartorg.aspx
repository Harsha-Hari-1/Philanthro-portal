﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="chartorg.aspx.vb" Inherits="PhilanthroPortal.chartorg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <asp:Chart ID="Chartorg" runat="server">
            <Series>
                <asp:Series Name="Series1" XValueMember="reg_name" YValueMembers="amt">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
    </center>
        
    
    </div>
    </form>
</body>
</html>
