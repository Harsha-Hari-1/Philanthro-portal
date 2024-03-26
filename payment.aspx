﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="payment.aspx.vb" Inherits="PhilanthroPortal.payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment Details</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
    @import url('https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap');

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Montserrat', sans-serif;
}

body {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background-color: #0C4160;

    padding: 30px 10px;
}

.card {
    max-width: 500px;
    margin: auto;
    color: black;
    border-radius: 20 px;
}

p {
    margin: 0px;
}

.container .h8 {
    font-size: 30px;
    font-weight: 800;
    text-align: center;
}

.btn.btn-primary {
    width: 100%;
    height: 70px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0 15px;
    background-image: linear-gradient(to right, #77A1D3 0%, #79CBCA 51%, #77A1D3 100%);
    border: none;
    transition: 0.5s;
    background-size: 200% auto;

}


.btn.btn.btn-primary:hover {
    background-position: right center;
    color: #fff;
    text-decoration: none;
}



.btn.btn-primary:hover .fas.fa-arrow-right {
    transform: translate(15px);
    transition: transform 0.2s ease-in;
}

.form-control {
    color: white;
    background-color: #223C60;
    border: 2px solid transparent;
    height: 60px;
    padding-left: 20px;
    vertical-align: middle;
}

.form-control:focus {
    color: white;
    background-color: #0C4160;
    border: 2px solid #2d4dda;
    box-shadow: none;
}

.text {
    font-size: 14px;
    font-weight: 600;
}

::placeholder {
    font-size: 14px;
    font-weight: 600;
}
        </style>
</head>
<body>
    <form id="form1" runat="server">
     <div class="container p-0">
            <div class="card px-4">
                <p class="h8 py-3">Payment Details</p>
                <div class="row gx-3">
                    <div class="col-12">
                        <div class="d-flex flex-column">
                            <p class="text mb-1">Person Name</p>
                            <asp:TextBox ID="txtPersonName" CssClass="form-control mb-3" runat="server" placeholder="Name"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="d-flex flex-column">
                            <p class="text mb-1">Card Number</p>
                            <asp:TextBox ID="txtCardNumber" CssClass="form-control mb-3" runat="server" TextMode="SingleLine" placeholder="1234 5678 435678"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="d-flex flex-column">
                            <p class="text mb-1">Expiry</p>
                            <asp:TextBox ID="txtExpiry" CssClass="form-control mb-3" runat="server" TextMode="SingleLine" placeholder="MM/YYYY"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="d-flex flex-column">
                            <p class="text mb-1">CVV/CVC</p>
                            <asp:TextBox ID="txtCVV" CssClass="form-control mb-3 pt-2" runat="server" TextMode="Password" placeholder="***"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="d-flex flex-column">
                            <p class="text mb-1">Amount</p>
                            <asp:TextBox ID="txtamt" CssClass="form-control mb-3 pt-2" runat="server" Placeholder="Amount"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-12">
                        <asp:Button ID="btnPay" runat="server" Text="Proceed" CssClass="btn btn-primary mb-3" OnClick="btnPay_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
