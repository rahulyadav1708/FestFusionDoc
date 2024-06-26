<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About_us.aspx.cs" Inherits="About_us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>About Us</title>
    <style>
        * {
            font-family: Nunito, sans-serif;
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

        .text-blk {
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
            margin-left: 0px;
            padding-top: 0px;
            padding-right: 0px;
            padding-bottom: 0px;
            padding-left: 0px;
            line-height: 25px;
        }

        .responsive-container-block {
            min-height: 75px;
            height: fit-content;
            width: 100%;
            padding-top: 10px;
            padding-right: 10px;
            padding-bottom: 10px;
            padding-left: 10px;
            display: flex;
            flex-wrap: wrap;
            margin-top: 0px;
            margin-right: auto;
            margin-bottom: 0px;
            margin-left: auto;
            justify-content: flex-start;
        }

            .responsive-container-block.bigContainer {
                margin-top: 12px;
                padding-top: 10px;
                padding-right: 30px;
                padding-bottom: 10px;
                padding-left: 30px;
                background-image: url("https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/bb29.png");
                background-position-x: initial;
                background-position-y: initial;
                background-size: cover;
                background-attachment: initial;
                background-origin: initial;
                background-clip: initial;
                background-color: initial;
                background-repeat-x: no-repeat;
                background-repeat-y: no-repeat;
            }

            .responsive-container-block.Container {
                max-width: 800px;
                flex-direction: column;
                align-items: center;
                padding-top: 20px;
                padding-right: 20px;
                padding-bottom: 20px;
                padding-left: 20px;
                margin-top: 150px;
                margin-right: auto;
                margin-bottom: 150px;
                margin-left: auto;
                background-color: white;
                border-top-left-radius: 10px;
                border-top-right-radius: 10px;
                border-bottom-right-radius: 10px;
                border-bottom-left-radius: 10px;
            }

        .text-blk.heading {
            font-size: 36px;
            line-height: 45px;
            font-weight: 800;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 30px;
            margin-left: 0px;
        }

        .text-blk.subHeading {
            text-align: center;
            font-size: 18px;
            line-height: 26px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 60px;
            margin-left: 0px;
        }

        .socialIcon {
            width: 33px;
            height: 33px;
        }

        .social-icons-container {
            display: flex;
            flex-direction: row;
            align-items: flex-start;
        }

        .social-icon {
            margin: 0 50px 0 50px;
        }

            .social-icon:hover {
                cursor: pointer;
            }

        @media (max-width: 768px) {
            .text-blk.heading {
                font-size: 55px;
                line-height: 65px;
            }

            .text-blk.subHeading {
                font-size: 18px;
                line-height: 24px;
            }

            .socialIcon {
                width: 20px;
                height: 20px;
            }

            .text-blk.subHeading {
                line-height: 27px;
            }

            .text-blk.heading {
                font-size: 32px;
                line-height: 40px;
                margin-top: 0px;
                margin-right: 0px;
                margin-bottom: 20px;
                margin-left: 0px;
            }

            .social-icon {
                margin: 0 25px 0 25px;
            }
        }

        @media (max-width: 500px) {
            .responsive-container-block.bigContainer {
                padding-top: 10px;
                padding-right: 20px;
                padding-bottom: 10px;
                padding-left: 20px;
            }

            .text-blk.heading {
                font-size: 45px;
                line-height: 55px;
                margin-top: 0px;
                margin-right: 0px;
                margin-bottom: 20px;
                margin-left: 0px;
            }

            .text-blk.subHeading {
                font-size: 14px;
                line-height: 22px;
                margin-top: 0px;
                margin-right: 0px;
                margin-bottom: 30px;
                margin-left: 0px;
            }

            .social-icons-container {
                flex-wrap: wrap;
                align-items: center;
                justify-content: center;
            }

            .text-blk.subHeading {
                font-size: 16px;
                line-height: 23px;
            }

            .text-blk.heading {
                font-size: 26px;
                line-height: 30px;
            }

            .social-icon {
                margin: 0 20px 0 20px;
            }
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
                    <a href="G_I_T.aspx">Contact Us</a>
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

    <div class="responsive-container-block bigContainer">
        <div class="responsive-container-block Container">
          <p class="text-blk heading">
            About Us
          </p>
            <p class="text-blk subHeading">
                Diesel is an everyday essential for many businesses alike. The gap in the electricity supply and demand results in power cuts and some areas suffer from a no electricity situation even today. As a result, industries, corporate parks, buildings, hospitals, hotels, schools, other businesses, etc. are dependent on power generators which constantly consume a heavy amount of diesel.

                Fuel is classiﬁed as a Grade B petroleum product by the Petroleum Ministry and there are prescribed guidelines for handling transport and storage of Diesel; still, fuel procurement is done in a hazardous manner. Fuel for personal and professional use is carried in plastic containers, barrels, and canisters that are risky.

                This is where Fuel Flow steps in, which puts an end to all your fuel requirement problems.
            </p>
          <div class="social-icons-container">
            <a class="social-icon">
              <img class="socialIcon image-block" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/bb33.png">
            </a>
            <a class="social-icon">
              <img class="socialIcon image-block" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/bb34.png">
            </a>
            <a class="social-icon">
              <img class="socialIcon image-block" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/bb35.png">
            </a>
            <a class="social-icon">
              <img class="socialIcon image-block" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/bb36.png">
            </a>
          </div>
        </div>
      </div>
    </form>
</body>
</html>
