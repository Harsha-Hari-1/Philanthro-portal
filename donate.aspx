<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="donate.aspx.vb" Inherits="PhilanthroPortal.donate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>donate selection</title>
    <style>
        .heading {
            font-size: 36px;
            margin-bottom: 30px;
            color: white;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }
        body {
            background-image:url(donate.jpg);
        }
        .card-container {
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .card {
            margin: 20px;
            padding: 20px;
            border-radius: 15px;
            transition: transform 0.3s ease;
            width: 250px; /* Adjust card width */
            height: 350px; /* Adjust card height */
            background: white;
            border: 1px solid #ccc;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .card:hover {
            transform: translateY(-5px);
        }
        .card img {
            width: 250px; /* Adjust image size */
            height: 190px; /* Adjust image size */
            border-radius: 50%;
            margin-bottom: 20px;
        }
        .card h3 {
            font-size: 20px;
            color: #333;
            margin: 0;
        }
        .card a {
            text-decoration: none;
            color: #333;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <div id="container">
            <div class="heading">Choose your donation</div>
        </div>
        <div class="card-container">
            <div class="card">
                <asp:LinkButton ID="CustomerButton" runat="server" OnClick="CustomerButton_Click">
                    <img src="https://www.shutterstock.com/image-photo/top-view-diverse-young-volunteers-260nw-1821196490.jpg" alt="Customer" />
                    <h3><center>Donation to Organization</center></h3>
                </asp:LinkButton>
            </div>
            <div class="card">
                <asp:LinkButton ID="ProviderButton" runat="server" OnClick="ProviderButton_Click">
                    <img src="https://www.sitaramjindalfoundation.org/blog/wp-content/uploads/2019/04/Charitiy-299x174.png" alt="Provider" />
                    <h3><center>Donation to Individual</center></h3>
                </asp:LinkButton>
            </div>
          
        </div>
    </form>
</body>
</html>
