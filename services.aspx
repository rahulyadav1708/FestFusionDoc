<%@ Page Title="" Language="C#" MasterPageFile="~/H.master" AutoEventWireup="true" CodeFile="services.aspx.cs" Inherits="services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Services</title>
    <style>
        * {
           cursor: url("img/cursor.svg"), auto;
        }

        section {
            height: 108vh;
            width: 100%;
            display: grid;
            place-items: center;
        }

        .row {
            display: flex;
            flex-wrap: wrap;
        }

        .column {
            width: 100%;
            padding: 0 1em 1em 1em;
            text-align: center;
        }

        .card {
            width: 100%;
            height: 90%;
            padding: 2em 1.5em;
            background: linear-gradient(#ffffff 50%, #027b9a 50%);
            background-size: 100% 200%;
            background-position: 0 2.5%;
            border-radius: 5px;
            box-shadow: 0 0 35px rgba(0, 0, 0, 0.12);
            cursor: pointer;
            transition: 0.5s;
        }

        h3 {
            font-size: 20px;
            font-weight: 600;
            color: #1f194c;
            margin: 1em 0;
        }

        p {
            color: #575a7b;
            font-size: 15px;
            line-height: 1.6;
            letter-spacing: 0.03em;
        }

        .icon-wrapper {
            background-color: #2c7bfe;
            position: relative;
            margin: auto;
            font-size: 30px;
            height: 2.5em;
            width: 2.5em;
            color: #ffffff;
            border-radius: 50%;
            display: grid;
            place-items: center;
            transition: 0.5s;
        }

        .card:hover {
            background-position: 0 100%;
        }

            .card:hover .icon-wrapper {
                background-color: #ffffff;
                color: #2c7bfe;
            }

            .card:hover h3 {
                color: #ffffff;
            }

            .card:hover p {
                color: #f0f0f0;
            }

        @media screen and (min-width: 768px) {
            section {
                padding: 0 2em;
            }

            .column {
                flex: 0 50%;
                max-width: 50%;
            }
        }

        @media screen and (min-width: 992px) {
            section {
                padding: 1em 3em;
            }

            .column {
                flex: 0 0 33.33%;
                max-width: 33.33%;
            }
        }
    </style>
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap"
        rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>
        <div class="row">
            <h2 class="section-heading">Our Services</h2>
        </div>
        <div class="row">
            <div class="column">
                <div class="card">
                    <div class="icon-wrapper">
                        <i class="fas fa-hammer"></i>
                    </div>
                    <h3>On-Demand Fuel Delivery</h3>
                    <p>
                        Our on-demand fuel delivery service offers convenience and peace of mind to our customers. With just a few clicks or taps on our website or mobile app, you can request fuel delivery to your location whenever you need it.
                    </p>
                </div>
            </div>
            <div class="column">
                <div class="card">
                    <div class="icon-wrapper">
                        <i class="fas fa-brush"></i>
                    </div>
                    <h3>Scheduled Fuel Deliveries</h3>
                    <p>
                        Simplify your fuel management with our scheduled delivery service. We work with you to create a customized delivery schedule based on your usage patterns and needs. Say goodbye to worrying about running out of fuel or managing inventory.
                    </p>
                </div>
            </div>
            <div class="column">
                <div class="card">
                    <div class="icon-wrapper">
                        <i class="fas fa-wrench"></i>
                    </div>
                    <h3>Emergency Fuel Delivery</h3>
                    <p>
                        Running low on fuel at a critical moment? Our emergency fuel delivery service is here to help. Whether you're stuck on the road or your generator is running low during a power outage, our team will respond promptly.
                    </p>
                </div>
            </div>
            <div class="column">
                <div class="card">
                    <div class="icon-wrapper">
                        <i class="fas fa-truck-pickup"></i>
                    </div>
                    <h3>Bulk Fuel Delivery</h3>
                    <p>
                        Businesses and organizations with large fuel consumption requirements can benefit from our bulk fuel delivery service. We offer reliable and efficient delivery of bulk fuel quantities, ensuring that your operations stay running without interruption.
                    </p>
                </div>
            </div>
            <div class="column">
                <div class="card">
                    <div class="icon-wrapper">
                        <i class="fas fa-broom"></i>
                    </div>
                    <h3>Fuel Quality Assurance</h3>
                    <p>
                        Quality is our top priority when it comes to fuel delivery. We source our fuel from reputable suppliers and adhere to strict quality control measures to ensure that you receive clean and contaminant-free fuel every time.
                    </p>
                </div>
            </div>
            <div class="column">
                <div class="card">
                    <div class="icon-wrapper">
                        <i class="fas fa-plug"></i>
                    </div>
                    <h3>Fuel Management Solutions</h3>
                    <p>
                        Take control of your fuel usage and expenses with our comprehensive fuel management solutions. Our team can provide you with tools and technologies to monitor fuel consumption and other servies.
                    </p>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

