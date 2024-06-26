<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact_us.aspx.cs" Inherits="contact_us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Contact Us</title>
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
            background-image: url('https://www.idfreshfood.com/wp-content/uploads/2017/09/contact_us_2.jpg');
        }

        *,
        *::before,
        *::after {
            box-sizing: border-box;
        }

        .all-field {
            align-items: center;
            border: 1px groove; /* Transparent border */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            padding: 15px;
            display: flex;
            flex-direction: column; /* Arrange labels vertically */
            align-items: center; /* Center align labels horizontally */
            border-radius: 10px;
            font-size: 16px;
            font-family: 'Times New Roman', Times, serif;
        }

        .custom-field {
            position: relative;
            font-size: 20px;
            border-top: 20px solid transparent;
            margin-bottom: 5px;
            display: inline-block;
            --field-padding: 12px;
        }

            .custom-field input {
                border: none;
                -webkit-appearance: none;
                -ms-appearance: none;
                -moz-appearance: none;
                appearance: none;
                background: #f2f2f2;
                padding: 15px;
                border-radius: 3px;
                width: 450px;
                outline: none;
                font-size: 24px;
            }

            .custom-field .placeholder {
                position: absolute;
                left: var(--field-padding);
                width: calc(100% - (var(--field-padding) * 2));
                overflow: hidden;
                white-space: nowrap;
                text-overflow: ellipsis;
                top: 22px;
                line-height: 100%;
                transform: translateY(-50%);
                color: #aaa;
                transition: top 0.3s ease, color 0.3s ease, font-size 0.3s ease;
            }

            .custom-field input.dirty + .placeholder,
            .custom-field input:focus + .placeholder,
            .custom-field input:not(:placeholder-shown) + .placeholder {
                top: -10px;
                font-size: 20px;
                color: #222;
            }

            /* ONE */
            .custom-field.one input {
                background: none;
                border: 2px solid #ddd;
                transition: border-color 0.3s ease;
            }

        .submit-button {
            margin-top: 15px; /* Adjust margin as needed */
            padding: 10px 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: box-shadow 0.3s ease;
            box-shadow: 0 0 10px rgba(0, 123, 255, 0);
            font-family: "Times New Roman", Times, serif;
            font-size: 20px;
        }

            .submit-button:hover {
                background-color: #004186df;
                box-shadow: 0 0 10px rgba(5, 68, 156, 0.1);
            }

        .all-field h1 {
            font-family: 'Apple Chancery', cursive; /* Apply Courier New font family to h1 */
        }
    </style>
</head>
<b <form id="form1" runat="server" action="https://api.web3forms.com/submit" method="POST">
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

        <!-- body code -->
        <div class="all-field">
            <input type="hidden" name="access_key" value="3365e40a-1315-40e0-ae8c-dc3c93300efb" />
            <h1>Get in Touch</h1>
            <label class="custom-field">
                <input type="text" name="name" placeholder="&nbsp;" />
                <span class="placeholder">Name</span>
            </label>
            <label class="custom-field one">
                <input type="email" name="email" placeholder=" " />
                <span class="placeholder">Email</span>
            </label>
            <label class="custom-field">
                <input type="number" placeholder="&nbsp;" />
                <span class="placeholder">Phone</span>
            </label>
            <label class="custom-field one">
                <input type="text" name="message" placeholder=" " />
                <span class="placeholder">Comment</span>
            </label>
            <div class="h-captcha" data-captcha="true"></div>
            <button class="submit-button" type="submit">Submit</button>
        </div>
    </form>
    <script src="https://web3forms.com/client/script.js" async defer></script>
</body>
</html>
