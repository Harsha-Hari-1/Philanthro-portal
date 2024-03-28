<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="donate.aspx.vb" Inherits="PhilanthroPortal.donate" %>

<!DOCTYPE html>
<html>
<head>
    <title>donate selection</title>
    <style>
        .heading {
            font-size: 36px;
            margin-bottom: 30px;
            color: white;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }
        body {
            background-image: url(donate.jpg);
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
       .backimg {
    background-image: url("img/single.jpg");
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    width: 100vw; 
    height: 100vh; 
}

    </style>
</head>
<body>
    <div class="backimg">
        <div id="container">
            <div class="heading">Choose your donation</div>
        </div>
        <div class="card-container">
            <div class="card">
                <a href="vieworg.aspx">
                    <img src="https://www.shutterstock.com/image-photo/top-view-diverse-young-volunteers-260nw-1821196490.jpg" alt="Customer" />
                    <h3><center>Donation to Organization</center></h3>
                </a>
            </div>
            <div class="card">
                <a href="viewind.aspx">
                    <img src="https://www.sitaramjindalfoundation.org/blog/wp-content/uploads/2019/04/Charitiy-299x174.png" alt="Provider" />
                    <h3><center>Donation to Individual</center></h3>
                </a>
            </div>
        </div>
    </div>
</body>
</html>
