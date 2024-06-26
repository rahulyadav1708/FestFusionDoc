<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_order_detail_pg.aspx.cs" Inherits="Fuel_Flow.user_order_detail_pg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>User order details</title>
    <style>
        *{
            cursor: url("img/cursor.svg"), auto;
        }
        /* header css */
        nav,
        .nav-item {
            display: flex;
        }

        .wlc {
            /*font-family: "Times New Roman", Times, serif;*/
            font-weight: bold;
            font-size: 30px;
            color: #027b9a;
            padding-right: 70px;
        }

        #nav {
            color: rgba(255, 255, 255, 0.6);
            height: 40px;
            border-radius: 15px;
            text-shadow: 0 -2px 0 black;
            background-color: #004659;
            cursor: pointer;
            box-shadow: 1px 2px 4px rgb(20, 20, 20), 0 4px 12px rgb(10, 10, 10);
        }

        .nav-item {
            flex-direction: row-reverse;
            font-size: 0.8999rem;
            line-height: 1rem;
            align-items: center;
            min-width: 170px;
            justify-content: space-between;
            transition: all 80ms ease;
            &:not(:first-of-type)

        {
            border-left: 1px solid rgb(60, 60, 60);
        }

        }

        &:not(:last-of-type) {
            border-right: 0.1rem solid black;
        }

        a {
            color: inherit;
            text-decoration: none;
            padding: 1ch;
            font-size: 18px;
        }

        .icon {
            padding: 1ch;
            position: relative;
        }

            .icon > svg {
                max-width: 16px;
            }



        .nav-item:hover {
            color: lawngreen;
        }

        .flx {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            align-items: center;
        }

        img {
            width: 90px;
            height: auto;
        }



        #mlogo {
            margin-left: 20px;
        }


        .logo {
            padding-left: 29px;
        }



        button {
            cursor: pointer;
            border: 0;
            border-radius: 4px;
            font-weight: 600;
            margin: 0 10px;
            width: 85px;
            padding: 10px 0;
            box-shadow: 0 0 20px rgba(104, 85, 224, 0.2);
            transition: 0.4s;
        }

        .log {
            background-color: rgba(255, 255, 255, 1);
        }

        button:hover {
            color: lawngreen;
            box-shadow: 0 0 20px rgba(104, 85, 224, 0.6);
            background-color: #004658;
        }

        /* body css */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #f5f5f5;
            border-radius: 5px;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
            color: #428bca;
        }

        .yorder,
        .odetails,
        .pdetails {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            grid-gap: 20px;
            margin-bottom: 20px;
        }

        .grid-item,
        div.odetails div,
        div.pdetails div {
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 3px;
        }

            .grid-item:first-child,
            div.odetails div:first-child,
            div.pdetails div:first-child {
                font-weight: bold;
            }
    </style>
</head>
<body>
   <form id="form1" runat="server">
        <!-- header code -->
    <div class="flx">
        <div class="logo" id="mlogo">
            <a href="H.aspx">
                <img src="img/logo.png" />
            </a>
        </div>
        <div>
            <nav class="menu" id="nav">
                <span class="nav-item">
                    <span class="icon">
                        <i data-feather="home"></i>
                    </span>
                    <a href="Home.aspx">Home</a>

                </span>
                <span class="nav-item">
                    <span class="icon">
                        <i data-feather="Contact"></i>
                    </span>
                    <a href="contact_us.aspx">Contact Us</a>
                </span>
                <span class="nav-item">
                    <span class="icon">
                        <i data-feather="Service"></i>
                    </span>
                    <a href="services.aspx">Service</a>
                </span>
                <span class="nav-item">
                    <span class="icon">
                        <i data-feather="Support"></i>
                    </span>
                    <a href="user_order_detail_pg.aspx">My Order</a>
                </span>
                <span class="nav-item">
                    <span class="icon">
                        <i data-feather="Support"></i>
                    </span>
                    <a href="L_M_pg.aspx"">Log out</a>
                </span>
            </nav>
        </div>
        <div class="sign_in">
            <asp:Label ID="Label1" runat="server" CssClass="wlc" Text=""></asp:Label>
        </div>
    </div>

        <!-- body code -->
        <div class="container">
            <h1>Your Order</h1>
            <div class="yorder">
                <div class="grid-item">Name: <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></div>
                <div class="grid-item">Order_Id: <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></div>
                <div class="grid-item">Address: <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></div>
                <div class="grid-item">Phone: <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></div>
            </div>
            <h1>Order Details</h1>
            <div class="odetails">
                <div>Order Received state: Maharashtra</div>
                <div>Order Received City: Mumbai</div>
                <div>Type of fuel: <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></div>
                <div>Delivery Date: <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></div>
                <div>Delivery Time: <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></div>
                <div>Quantity: <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></div>
            </div>
            <h1>Payment Details</h1>
            <div class="pdetails">
                <div>Fuel Price: 95</div>
                <div>Sub Total: <asp:Label ID="Label10" runat="server" Text=""></asp:Label></div>
                <div>Delivery charges: Free</div>
                <div>Total: <asp:Label ID="Label11" runat="server" Text=""></asp:Label></div>
            </div>
        </div>
    </form>
</body>
</html>
