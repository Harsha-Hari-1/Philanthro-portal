<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="organization.aspx.vb" Inherits="PhilanthroPortal.organization" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 345px;
        }
        .auto-style3 {
            width: 345px;
            height: 29px;
        }
        .auto-style4 {
            width: 680px;
            height: 29px;
        }
        .auto-style5 {
            width: 345px;
            height: 114px;
        }
        .auto-style6 {
            width: 680px;
            height: 114px;
        }
        .auto-style7 {
            width: 680px;
        }
        @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

* {
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}

:root {
    --main-color: #3a0ca3;
    --background-color: #8c3fe2
}

body {
    display: grid;
    place-items: center;
    height: 100vh;
    background: var(--background-color);


}

#FormContainer {
    background-color: #ffffffa1;
    backdrop-filter: blur(10px);
    border: 2px solid #ffffff6d;
    width: 760px;
    border-radius: 10px;
    box-shadow: 3px 3px 11px 1.5px #0000002b;
    font-family: Poppins;
    padding: 10px;
    height: 550px;

    display: grid;
    grid-template-columns: 50% 50%;
}

h1 {
    padding: 20px;
    color: var(--main-color);
    font-size: 2.1rem;
    font-weight: 800;
    grid-column: 1/span 2;
}

.ImgContainer {
    overflow: hidden;
    border-radius: 10px;
  background:url(https://wallpapercg.com/media/ts_sq/7898.webp);
  background-size:100% 100%;
}



form {
    display: flex;
    flex-direction: column;
    padding: 10px;
}

.Name,
.password {
    display: grid;
    grid-template-columns: repeat(2, 50%);

}

form li {
    list-style-type: none;

    display: flex;
    flex-direction: column;
    padding: 0px 5px;
    text-align: left;

}

form label {
    font-size: 0.8rem;
    font-weight: 600;
    width: 100%;
    padding: 5px 15px;
    /*color: var(--main-color);*/
}

form input,
form select {
        border-style: none;
            border-color: inherit;
            border-width: medium;
            padding: 10px;
            border-radius: 8px;
            /*background-color: #ffffff6d;*/
            outline: none;
            /*color: var(--main-color);*/
            margin-bottom: 10px;
}

form input:focus,
form select:focus,
form input:hover,
form select:hover {
    /*border: 1px solid var(--main-color);
}*/

/*form .Phone {
    display: grid;
    /*grid-template-columns: 35% 65%;*/
}*/

form select {
    width: 100%;
}

form .Phone input {
    flex: 1;
    width: 100%;
}

.Subscribe {
    display: flex;
    flex-direction: row;
    padding: 10px;
    align-items: center;
}

.CheckBoxCont {
    width: 25px;
    border-radius: 5px;
    height: 25px;
    position: relative;
    border: 1px solid /*var(--main-color)*/;
    transition-duration: 0.2s;
}

/*.CheckBoxCont:hover {
    background-color: var(--main-color);
}*/

.CheckBoxCont:hover .Tickline2 {
    background-color: white;
}

.CheckBoxCont:hover .Tickline1 {
    background-color: white;
}


.Tickline2,
.Tickline1 {

    /*background-color: var(--main-color);*/
    border-radius: 20px;
    height: 3px;
    position: absolute;
    width: 20px;
    transition-duration: 0.3s;
    border: none;
    ;

}

.Tickline1 {
    rotate: -45deg;
    top: 10px;
    left: 5px;
    opacity: 0;
    width: 18px;
    animation: 1s car linear infinite;
}

.Tickline2 {
    rotate: 50deg;
    top: 12px;
    width: 8px;
    opacity: 0;
    left: 2px;
}

.Subscribe label {
    padding: 10px;
    width: auto;

}

form button {
    width: auto;
    border-radius: 5px;
    padding: 10px 20px;
    font-size: 1.1rem;
    color: white;
    background-color: lightgoldenrodyellow;
    border: none;
    cursor: pointer;
    margin: auto;
}

@media (max-width:800px) {
    .ImgContainer {
        display: none;
    }

    /*#FormContainer {
        grid-template-columns: 100%;
        width: 380px;
    }*/


}

@media (max-width:430px) {
    #FormContainer {
        border-radius: 0px;
        width: 100%;
        padding: 5px;
        height: 100%;
    }

    .Name,
    .Phone,
    .password {
        display: block;
    }
}
    </style>
    <script>function ToggleCheckBox(elem) {
    var TickLine1 = elem.querySelector(".tick>.Tickline1")
    var Tickline2 = elem.querySelector(".tick>.Tickline2")
    if (elem.getAttribute("data-status") == "true") {
        TickLine1.style.opacity = 1
        Tickline2.style.opacity = 1
        elem.setAttribute("data-status", false)

    } else {
        TickLine1.style.opacity = 0
        Tickline2.style.opacity = 0
        elem.setAttribute("data-status", true)


    }
}
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--        <div id="FormContainer">
       
        <form id="Form">
            <h1 id="FormHeading">Sign Up</h1>
            <div class="Name">--%>
               <table style="background-color:lightpink; flex-align:center; width: 655px;" align="center" >
            <tr>
                <td class="auto-style1">Organization Name</td>
                <td class="auto-style7">
                    <asp:TextBox ID="oname" runat="server" Width="180px"></asp:TextBox>
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
                    <asp:TextBox ID="oadd" runat="server"></asp:TextBox>
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
                    <asp:GridView ID="gvorg" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AllowPaging="True" PageIndex="3" PageSize="5" Width="761px" Height="16px">
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
            <%--</div>
            </form>
      <form>--%>
          <%--<div class="Phone">
                <table>
                <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" Text="Register" style="height: 29px" />
                </td>
                    </tr>
                </table>
            </div>
      </form>--%>

  


  
        <table>
        
            <%--<tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">
                    <asp:Button ID="BtnORegister" runat="server" Text="Register" style="height: 29px" />
                    <asp:GridView ID="gvorg" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AllowPaging="True" PageIndex="3" PageSize="5" Width="761px" Height="16px">
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
            </tr>--%>
   </table>
     </div>
</asp:Content>
