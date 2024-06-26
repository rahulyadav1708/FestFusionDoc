<%@ Page Title="" Language="C#" MasterPageFile="~/Landing.master" AutoEventWireup="true" CodeFile="L_M_pg.aspx.cs" Inherits="L_M_pg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
    <link href="css/L_P_pg.css" rel="stylesheet" />
    <style>
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <img src="img/banner.jpg" class="banner" />
    <div class="hw">
        <h1>How it works</h1>

        <p class="pargraph">Login to the website and then go to the Order page the Order the Fuel, place an order, and get fuel delivered at your doorstep!</p>
        <table>

            <tr>
                <td class="hiw">
                    <i class="fa-solid fa-map-location-dot"></i>
                </td>
                <td>
                    <div class="maintext">Tell us where you are</div>
                    <br />
                    <div class="subtext">We come to you </div>

                </td>
            </tr>
            <tr>
                <td class="hiw">
                    <i class="fa-solid fa-gauge-high"></i></td>
                <td>
                    <div class="maintext">Enter the quantity and time</div>
                    <br />
                    <div class="subtext">Minimum 20 ltr</div>

                </td>
            </tr>
            <tr>
                <td class="hiw">
                    <i class="fa-solid fa-credit-card"></i>

                </td>
                <td>
                    <div class="maintext">Pay and place your order</div>
                    <br />
                    <div class="subtext">Online/ UPI/ Wallet </div>
                </td>
            </tr>
        </table>
    </div>

    <!-- Product Section Start -->
    <div class="cont_flex">
        <div class="product-card">

            <img src="img/diesel-pump-icon-transformed-removebg.png" alt="Product Image" class="product-image">
            <div class="product-info">
                <h2 class="product-title">Order Deisel</h2>
                <p class="product-description">Get deisel delivered to your doorstep with ease. Simply order online and schedule a convenient time.</p>
                <button class="btn btn-primary" onclick="red_reg">Order</button>
            </div>
        </div>
        <div class="product-card">            
            <img src="img/Picture1-removebg-preview.png" alt="Product Image" class="product-image">
            <div class="product-info">
                <h2 class="product-title">Order Petrol</h2>
                <p class="product-description">Skip the gas station and have petrol delivered to you! Order online for convenient, on-demand refueling.</p>
                <button class="btn btn-primary">Order</button>
            </div>
        </div>
       <!-- <div class="product-card">
            <img src="img/ev.png" alt="Product Image" class="product-image">
            <div class="product-info">
                <h2 class="product-title">EV Charging</h2>
                <p class="product-description">Charge your EV stress-free with our card. Schedule a session for convenient, hassle-free charging.</p>
                <button class="btn btn-primary">Order</button>
            </div>
        </div>-->
    </div>
    <!-- Product Section end -->

    <!-- Features section -->
    <div class="features-container">
        <h1 class="feat_head">FEATURES</h1>
        <div class="cont">
            <div class="feature dff">
                <div class="head">
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                </div>
                <div style="text-align: center; font-weight: bold; margin-bottom: 15px;">
                    Same price as Petrol Pump.
                </div>
                <div class="bd">Fuel Flow offers fuel at the identical price as your Regular Petrol Pump.</div>
            </div>
            <div class="feature">
                <div class="head">
                    <i class="fa-solid fa-truck-fast"></i>
                </div>
                <div style="text-align: center; font-weight: bold; margin-bottom: 15px;">
                    SAFE AND SECURE
                </div>
                <div class="bd">Fuel Flow follows all the government rules and regulations. Our drivers are trained and have commercial licenses.</div>
            </div>
            <div class="feature dff">
                <div class="head">
                    <i class="fa-solid fa-medal"></i>
                </div>
                <div style="text-align: center; font-weight: bold; margin-bottom: 15px;">
                    QUALITY
                </div>
                <div class="bd">We clean our tanks often to ensure you get the cleanest and best fuel.</div>
            </div>
            <div class="feature">
                <div class="head">
                    <i class="fa-sharp fa-solid fa-droplet"></i>
                </div>
                <div style="text-align: center; font-weight: bold; margin-bottom: 15px;">
                    SAVE FUEL
                </div>
                <div class="bd">No spillage - No wastage!</div>
            </div>
        </div>
    </div>
    <div class="features-container">
        <div class="cont">
            <div class="feature">
                <div class="head">
                    <i class="fa-sharp fa-solid fa-money-bill-1-wave"></i>
                </div>
                <div style="text-align: center; font-weight: bold; margin-bottom: 15px;">
                    SAVE MONEY
                </div>
                <div class="bd">Remove extra charges and save money on storing and managing diesel.</div>
            </div>
            <div class="feature dff">
                <div class="head">
                    <i class="fa-solid fa-stopwatch"></i>
                </div>
                <div style="text-align: center; font-weight: bold; margin-bottom: 15px;">
                    SERVICE
                </div>
                <div class="bd">Order fuel between 8 am and 8 pm in PCMC area and choose your delivery time!</div>
            </div>
            <div class="feature">
                <div class="head">
                    <i class="fa-brands fa-wpforms"></i>
                </div>
                <div style="text-align: center; font-weight: bold; margin-bottom: 15px;">
                    LEGALISED SERVICE
                </div>
                <div class="bd">Approved by the Government of India and the Petroleum and Explosive Safety Organization.</div>
            </div>
            <div class="feature dff">
                <div class="head">
                    <i class="fa-solid fa-user"></i>
                </div>
                <div style="text-align: center; font-weight: bold; margin-bottom: 15px;">
                    SAVE MANPOWER
                </div>
                <div class="bd">Doorstep delivery means no extra effort and no need for additional manpower!</div>
            </div>
        </div>
    </div>


    <!-- FAQ section -->
    <div class="faq-header">
        Commonly Asked Queries
        <!-- Frequently Asked Questions -->
    </div>

    <div class="faq-content">
        <div class="faq-question">
            <input id="q1" type="checkbox" class="panel" />
            <div class="plus">+</div>
            <label for="q1" class="panel-title">What is FuelFlow?</label>
            <div class="panel-content">FuelFlow is an online service for delivering fuel directly to you. You can order fuel online and have it delivered to your location at a time that suits you. We use special tankers called Refuellers to make refueling easier for you!</div>
        </div>

        <div class="faq-question">
            <input id="q2" type="checkbox" class="panel" />
            <div class="plus">+</div>
            <label for="q2" class="panel-title">What are FuelFlow hours of operation?</label>
            <div class="panel-content">
                Our vehicles operate and provide deliveries 24/7, all day and night.
            </div>
        </div>

        <div class="faq-question">
            <input id="q3" type="checkbox" class="panel" />
            <div class="plus">+</div>
            <label for="q3" class="panel-title">Where does FuelFlow source its fuel form?</label>
            <div class="panel-content">
                FuelFlow gets fuel from authorized dealers near you. We check every drop of fuel for quality before putting it in our delivery trucks. We don't keep fuel in stock; we only get it when customers order it.
            </div>
        </div>
        <div class="faq-question">
            <input id="q4" type="checkbox" class="panel" />
            <div class="plus">+</div>
            <label for="q4" class="panel-title">Which areas are being served by FuelFlow right now?</label>
            <div class="panel-content">
                We provide fuel delivery services in  Mumbai and several other tier 2 cities across India.
            </div>
        </div>
    </div>
    <script src="https://kit.fontawesome.com/ca59440660.js" crossorigin="anonymous"></script>
</asp:Content>

