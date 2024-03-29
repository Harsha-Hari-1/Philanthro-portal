<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="chartsample1.aspx.vb" Inherits="PhilanthroPortal.chartsample1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <asp:Chart ID="Chart1" runat="server">
            <Series>
                <asp:Series Name="Series1"  XValueMember="reg_name" YValueMembers="amount"> 
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
