<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="profileind.aspx.vb" Inherits="PhilanthroPortal.profileind" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Profile</title>
      <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        .container {
            display: flex;
            min-height: 100vh;
        }

        .sidebar {
            background-color: #333;
            width: 400px;
            padding-top: 20px;
            transition: width 0.3s ease; 
        }

        .sidebar.active {
            width: 0;
        }

        .sidebar a {
            padding: 10px 15px;
            text-decoration: none;
            font-size: 18px;
            color: #f1f1f1;
            display: block;
            transition: background-color 0.3s ease;
        }

        .sidebar a:hover {
            background-color: #555;
        }

        .hamburger {
            position: fixed;
            top: 20px;
            left: 20px;
            cursor: pointer;
            z-index: 999; 
            color: white; 
            padding: 10px;
        }

        .hamburger span {
            display: block;
            width: 30px;
            height: 5px;
            background: white;
            margin: 5px 0;
            transition: 0.4s;
        }

       
        .content {
            flex: 1;
            padding: 20px;
            text-align: center;
        }

        .content h2 {
            color: #333;
        }

        .content img {
            width: 150px;
            height: auto;
            margin: 20px auto;
            display: block;
        }

        .content label {
            font-weight: bold;
            color: #555;
            margin-bottom: 5px;
            display: block;
        }

        .profile-info {
            margin-bottom: 15px;
            
        }

        @media (max-width: 768px) {
            .container {
                flex-direction: column;
            }

            .sidebar.active {
                width: 100%;
            }
        }
        .profile-info {
  
    margin-bottom: 10px; 
    text-align:left;/* Adjust as needed */
}

.profile-info label {
    width: 150px; /* Adjust width as needed */
    font-weight: bold;
    display:inline-block;
    vertical-align:top;
}
 </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
            <div class="sidebar" id="sidebar">
                <br />
                <br />
                <br />
                <a href="ind2.aspx">&nbsp;&nbsp;&nbsp;&nbsp;Profile</a>
                 <a href="indfromdonar.aspx">&nbsp;&nbsp;&nbsp;&nbsp;Fund Received from donar</a>
                 <a href="indfromorg.aspx">&nbsp;&nbsp;&nbsp;&nbsp;Fund Received from organization</a>

              
                <a href="login.aspx">&nbsp;&nbsp;&nbsp;&nbsp;Logout</a>
            </div>

            <div class="content">
                <div class="hamburger" onclick="toggleSidebar()">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>

                <h2>
                    
                <div class="profile-info">
                    <label  class="profile-info label">Email:</label>
                    <asp:Label ID="induser" runat="server" Text=""></asp:Label>
                </div>
               
                <div class="profile-info">
                    <label class="profile-info label">Name:</label>
                    <asp:Label ID="indname" runat="server" Text=""></asp:Label>
                </div>
                     <div class="profile-info">
                    <label  class="profile-info label">Condition:</label>
                    <asp:Label ID="cont" runat="server" Text=""></asp:Label>
                </div>
                <div class="profile-info">
                    <label class="profile-info label">Address:</label>
                    <asp:Label ID="address" runat="server" Text=""></asp:Label>
                </div>
                <div class="profile-info">
                    <label  class="profile-info label">Pincode:</label>
                    <asp:Label ID="pin" runat="server" Text=""></asp:Label>
                </div>
                <div class="profile-info">
                    <label  class="profile-info label">Pan No:</label>
                    <asp:Label ID="pan" runat="server" Text=""></asp:Label>
                </div>
                <div class="profile-info">
                    <label  class="profile-info label">Account No:</label>
                    <asp:Label ID="acc1" runat="server" Text=""></asp:Label>
                </div>
                <div class="profile-info">
                    <label  class="profile-info label">Contact Number:</label>
                    <asp:Label ID="number" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
        </div>
      
    </form>
</body>
</html>
