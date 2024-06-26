<%@ Page Language="C#" AutoEventWireup="true" CodeFile="D_order_pg.aspx.cs" Inherits="D_order_pg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <link href="css/All_Order_page.css" rel="stylesheet" />
    <title>Diesel</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        .row {
            margin-bottom: 10px;
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
    </style>
</head>
<body>
    <!-- Razorpay checkout script -->
     <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
 
 <!-- JavaScript function definition -->
 <script>
     function OpenPaymentWindow(key, amountInSubunits, currency, name, descritpion, imageLogo, orderId, profileName, profileEmail, profileMobile, notes) {
         notes = $.parseJSON(notes);
         var options = {
             "key": key, // Enter the Key ID generated from the Dashboard
             "amount": amountInSubunits, // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
             "currency": currency,
             "name": name,
             "description": descritpion,
             "image": imageLogo,
             "order_id": orderId, //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
             "handler": function (response) {
                 window.location.href = "../success.aspx?orderId=" + response.razorpay_order_id + "&paymentId=" + response.razorpay_payment_id;
                 //alert(response.razorpay_payment_id);
                 //alert(response.razorpay_order_id);
                 //alert(response.razorpay_signature)
             },
             "prefill": {
                 "name": profileName,
                 "contact": profileMobile
             },
             "notes": notes,
             "theme": {
                 "color": "#F37254"
             }
         };
         var rzp1 = new Razorpay(options);
         rzp1.open();
         rzp1.on('payment.failed', function (response) {
             console.log(response.error);
             alert("Oops, something went wrong and payment failed. Please try again later");
         });
     }
 </script>
    <!-- header code -->
    <div class="flx">
        <div class="logo" id="mlogo">
            <a href="H.aspx">
                <img src="../img/logo.png" />
                
            </a>
        </div>
        <div>
            <nav class="menu" id="nav">
                <span class="nav-item">
                    <span class="icon">
                        <i data-feather="home"></i>
                    </span>
                    <a href="../Home.aspx">Home</a>
    
                </span>
                <span class="nav-item">
                    <span class="icon">
                        <i data-feather="Contact"></i>
                    </span>
                    <a href="../contact_us.aspx">Contact Us</a>
                </span>
                <span class="nav-item">
                    <span class="icon">
                        <i data-feather="Service"></i>
                    </span>
                    <a href="../services.aspx">Services</a>
                </span>
                <span class="nav-item">
                    <span class="icon">
                        <i data-feather="Support"></i>
                    </span>
                    <a href="../user_order_detail_pg.aspx">My Order</a>
                </span>
                <span class="nav-item">
                    <span class="icon">
                        <i data-feather="Support"></i>
                    </span>
                    <a href="../L_M_pg.aspx">Log Out</a>
                </span>
            </nav>
        </div>
        <div class="sign_in">
            <asp:Label ID="Label3" runat="server" CssClass="wlc" Text=""></asp:Label>
        </div>
    </div>
    <div>
        <main class="cd__main">
            <div class="container">
                <div class="title">
                    <h2>Diesel</h2>
                </div>
                <div class="d-flex">
                    <form id="form1" runat="server">
                        <label>
                            <span class="lname">Quantity(ltr)<span class="required">*</span></span>
                            <asp:TextBox ID="TextBox1" OnTextChanged="UpdateTotalPrice" AutoPostBack="true" CssClass="inp inp1" runat="server" TextMode="Number"></asp:TextBox>
                        </label>
                        <label>
                            <span>Date</span>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="inp inp1" TextMode="Date"></asp:TextBox>
                        </label>
                        <label>
                            <span>Time <span class="required">*</span></span>
                            <asp:TextBox ID="TextBox3" CssClass="inp inp1" TextMode="Time" runat="server"></asp:TextBox>
                        </label>
                        <label>
                            <span>Delivery Address <span class="required">*</span></span>
                            <asp:TextBox ID="TextBox4" placeholder="House number and street name" CssClass="inp" runat="server"></asp:TextBox>
                        </label>
                        <label>
                            <span>Postcode / ZIP <span class="required">*</span></span>
                            <asp:TextBox ID="TextBox6" CssClass="inp" TextMode="Number" runat="server"></asp:TextBox>
                        </label>
                        <label>
                            <span>Phone <span class="required">*</span></span>
                            <asp:TextBox ID="TextBox7" CssClass="inp" TextMode="Phone" runat="server"></asp:TextBox>
                        </label>
                        <asp:Button ID="Button2" CssClass="btn" runat="server" Text="Place Order" OnClick="Button2_Click" />
                    </form>
                    <div class="Yorder">
                        <table>
                            <tr>
                                <th colspan="2">Your order</th>
                            </tr>
                            <tr>
                                <td>Product Price</td>
                                <td>₹ 95<p id="totalPrice"></p>
                                </td>
                            </tr>
                            <tr>
                                <td>Subtotal</td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>Shipping</td>
                                <td>Free shipping</td>
                            </tr>
                        </table>
                        <br />
                        <div class="total">
                            <p>Total = </p>
                            <asp:Label ID="Label2" runat="server" Text =""></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>   
</body>
</html>
