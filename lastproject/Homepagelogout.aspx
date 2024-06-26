<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/master.master" CodeFile="Homepagelogout.aspx.cs" Inherits="homepage" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <style>
        .btn-submit {
            background-color: forestgreen;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 10px;
        }

            .btn-submit:hover {
                background-color: #45a049;
            }

        .pass {
            margin-left: 20px;
        }

        .bold-label {
            font-weight: bold;
        }

        .form-container {
            width: 300px;
            margin: 0 auto;
            padding: 0px;
            border-radius: 5px;
        }

            .form-container label {
                display: block;
                font-weight: bold;
            }

            .form-container .form-control {
                display: block;
                width: 100%;
                padding: 8px;
                margin-bottom: 10px;
                border: none;
            }
    </style>

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

    <body>


        <div class="slide-1">

            <img
                class="slide_image"
                src="img/festpic2.jpg"
                alt="" />
            <p class="slide-p">
                Safety precautions during COVID-19. We’re taking additional steps and
        precautionary measures to protect our community from COVID-19.
        <a href="">Know more</a>
            </p>
        </div>

        <div class="line"></div>
        <!-- image slide  -->

        <marquee direction="right" scrollamount="10">
            <div class="more-photo">
                <div>
                    <img
                        src="img/Open Mic.png" height="150px" width="120px"
                        alt="" />
                </div>

                <div>
                    <img
                        src="img/Reel Making.jpg" height="150px" width="120px"
                        alt="" />
                </div>

                <div>
                    <img
                        src="img/Solo Dance.jpg" height="150px" width="120px"
                        alt="" />
                </div>

                <div>

                    <img src="img/Solo Singing.jpg" height="150px" width="120px" />


                </div>

                <div>
                    <img src="img/Street%20Play.jpg" height="150px" width="120px" />
                </div>

                <div>
                    <img src="img/Table%20Tennis.jpg" height="150px" width="120px" />
                </div>

                <div>
                    <img src="img/Solo%20Dance.jpg" height="150px" width="120px" />
                </div>

                <div>
                    <img
                        src="https://plus.unsplash.com/premium_photo-1676389758875-be52d3176b91?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80" height="150px" width="120px"
                        alt="" />
                </div>

                <div>
                    <img
                        src="img/Reel Making.jpg" height="150px" width="120px"
                        alt="" />
                </div>

                <div>
                    <img src="img/Solo Singing.jpg" height="150px" width="120px" />
                </div>

                <div>
                    <img src="img/Table%20Tennis.jpg" height="150px" width="120px" />
                </div>

                <div>
                    <img src="img/Street%20Play.jpg" height="150px" width="120px" />
                </div>
            </div>
        </marquee>

        <!-- image slide  -->

        <div class="line"></div>
        <!------------------- page contain  ------------>

        <br />


        <br />

        <div class="main">
            <div class="HowItWorks">

                <button class="nav-button">Register for Event</button>
                <p id="htext">How It Works</p>

                <div>
                    <div>
                        <img
                            width="15%"
                            src="https://cdn3.iconfinder.com/data/icons/social-messaging-ui-color-line/245532/14-512.png"
                            alt="" />
                        <h3>Select College</h3>
                        <p>
                            Select the college which finds you most easy and fun.
                        </p>
                    </div>

                    <div>
                        <img
                            width="15%"
                            src="https://mixpanel.com/wp-content/uploads/2020/07/icon-09.svg"
                            alt="" />
                        <h3>Select game</h3>
                        <p>
                            Select the game You want to participte in.
                        </p>
                    </div>

                    <div>
                        <img
                            width="15%"
                            src="https://d1hcxvwj40zhpj.cloudfront.net/images/icons/blue-circle-creditcard.png"
                            alt="" />
                        <h3>Fill the Form</h3>
                        <p>
                            Fill the form of the game you find interesting and get your pass.
                        </p>
                    </div>
                </div>

                <p>
                    We have listings of Phone Number, Albums, Packages and Reviews of Best
          Photographers from all over India for Wedding, Babies, Kids, Pre
          Wedding, Maternity, Anniversary, Commercial, Food, Restaurant,
          Corporate Events, Fashion, Portfolio, Nature and Travel Photography.
                </p>
            </div>
        </div>

        <!-- container  -->

        <div class="container">
            <p id="htext" class="center">Colleges Hosting the Events</p>
            <p id="stext" class="center">
                Participate and Win the Interesting Prize!!!
            </p>

            <div class="cate">
                <div style="background-color: khaki;">
                    <div>
                        <p id="btext">Thakur College</p>
                        <p id="stext">
                            Thakur Educational Campus, Thakur Village, Kandivali East, Mumbai, Maharashtra 400101
                        </p>
                    </div>
                    <div>
                        <a href="thakurfestmain.aspx" target="_blank">
                            <img src="img/Thakur%20College.jpeg" height="100px" />
                        </a>
                    </div>
                </div>

                <div style="background-color: khaki;">
                    <div>
                        <p id="btext">Tolani College</p>
                        <p id="stext">Guru Gobind Singh Marg, Sher E Punjab Colony, Andheri East, Mumbai, Maharashtra 400093</p>
                    </div>
                    <div>
                        <a href="tolanifestmain.aspx" target="_blank">
                            <img src="img/Tolani%20College.jpg" height="100px" />
                        </a>
                    </div>
                </div>

                <div style="background-color: khaki;">
                    <div>
                        <p id="btext">Valia College</p>
                        <p id="stext">Cosmopolitian Education Society Road Andheri, Andheri West, Mumbai, Maharashtra 400053</p>

                    </div>
                    <a href="valiafestmain.aspx" target="_blank">
                        <img src="img/Valia%20College.jpeg" height="100px" />
                    </a>
                </div>

                <div style="background-color: khaki;">
                    <div>
                        <p id="btext">Dhanukar College </p>
                        <p id="stext">Dixit Rd, Parle Kalpataru CHSL, Vile Parle East,Mumbai, Maharashtra 400057</p>
                    </div>
                    <div>
                        <a href="dhanukarfestmain.aspx" target="_blank">
                            <img src="img/Dhanukar%20College.jpg" height="100px" />
                        </a>
                    </div>
                </div>

                <div style="background-color: khaki;">
                    <div>
                        <p id="btext">sathaye Colege</p>
                        <p id="stext">Dixit Rd, Satsang CHSL, Navpada, Vile Parle East, Mumbai, Maharashtra 400057</p>
                    </div>
                    <div>
                        <a href="sathayefestmain.aspx" target="_blank">
                            <img src="img/Sathaye%20College.jpg" height="100px" />
                        </a>
                    </div>
                </div>

                <div style="background-color: khaki;">
                    <div>
                        <p id="btext">R.J college</p>
                        <p id="stext">Station Road Opposite Ghatkopar Station, Ghatkopar West, Mumbai, Maharashtra 400086</p>

                    </div>
                    <div>
                        <a href="rjfestmain.aspx" target="_blank">
                            <img src="img/RJ%20College.jpg" height="100px" />
                        </a>
                    </div>
                </div>

                <div style="background-color: khaki;">
                    <div>
                        <p id="btext">Somaiya College</p>
                        <p id="stext">Vidyanagar, Vidya Vihar East, Ghatkopar East, Mumbai, Maharashtra 400077</p>
                    </div>
                    <a href="somaiyafestmain.aspx" target="_blank">
                        <img src="img/KJ%20somaiya%20College.jpg" height="100px" />
                    </a>
                </div>

                <div style="background-color: khaki;">
                    <div>
                        <p id="btext">Browse All Colleges</p>
                    </div>
                    <div>
                        <img
                            src="https://arrow.apache.org/img/arrow-logo_chevrons_black-txt_transparent-bg.png"
                            alt="" />
                    </div>
                </div>
            </div>
        </div>

        <!-- more photo  -->

        <div class="line"></div>
        <!-- image slide  -->

        <div class="more-photo">
            <div>
                <img
                    src="https://images.unsplash.com/photo-1673557143243-39f2995a3bca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
                    alt="" />
            </div>

            <div>
                <img
                    src="https://plus.unsplash.com/premium_photo-1673356713504-d8a6a35eb209?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
                    alt="" />
            </div>

            <div>
                <img
                    src="https://images.unsplash.com/photo-1673557143243-39f2995a3bca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
                    alt="" />
            </div>

            <div>
                <img
                    src="https://plus.unsplash.com/premium_photo-1673356713504-d8a6a35eb209?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
                    alt="" />
            </div>

            <div>
                <img
                    src="https://images.unsplash.com/photo-1673557143243-39f2995a3bca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
                    alt="" />
            </div>

            <div>
                <img
                    src="https://plus.unsplash.com/premium_photo-1673356713504-d8a6a35eb209?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
                    alt="" />
            </div>

            <div>
                <img
                    src="https://images.unsplash.com/photo-1673557143243-39f2995a3bca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
                    alt="" />
            </div>

            <div>
                <img
                    src="https://plus.unsplash.com/premium_photo-1673356713504-d8a6a35eb209?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
                    alt="" />
            </div>

            <div>
                <img
                    src="https://images.unsplash.com/photo-1673557143243-39f2995a3bca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
                    alt="" />
            </div>

            <div>
                <img
                    src="https://plus.unsplash.com/premium_photo-1673356713504-d8a6a35eb209?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
                    alt="" />
            </div>

            <div>
                <img
                    src="https://images.unsplash.com/photo-1673557143243-39f2995a3bca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
                    alt="" />
            </div>

            <div>
                <img
                    src="https://plus.unsplash.com/premium_photo-1673356713504-d8a6a35eb209?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
                    alt="" />
            </div>
        </div>

        <!-- image slide  -->

        <div class="line"></div>

        <!-- more photo  -->

        <div class="main">
            <div class="why">
                <p>Passes</p>
                <div>
                    <div style="background-color: wheat;">
                        <div>


                            <img src="img/business-card.png" height="80px" width="80px" />

                        </div>
                        <table class="pass">



                            <div>
                                <tr>

                                    <td>
                                        <asp:Label ID="lblName" runat="server" Visible="false" CssClass="bold-label">Name :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblNamed" runat="server" CssClass="form-control"></asp:Label></td>

                                </tr>
                            </div>
                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblGame" runat="server" Visible="false" CssClass="bold-label">Game :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblGamed" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>

                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblID" runat="server" Visible="false" CssClass="bold-label">ID Number :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblIDNumber" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>
                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label51" runat="server" Visible="false" CssClass="bold-label">College :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label52" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>

                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblcollname" runat="server" Visible="false" CssClass="bold-label">Event College :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Labelcollegename" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>
                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblgameda" runat="server" Visible="false" CssClass="bold-label">Game Date :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblGameDate" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>

                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblpay" runat="server" Visible="false" CssClass="bold-label">Payment Status :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblsts" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>

                            </div>



                            <div>

                                <tr>

                                    <td></td>

                                    <td>
                                        <asp:Button ID="Button1" runat="server" Visible="false" Text="paynow" CssClass="btn-submit" On />
                                    </td>
                                </tr>
                            </div>





                        </table>



                    </div>
                    <div style="background-color: wheat;">
                        <div>

                            <img src="img/business-card.png" height="80px" width="80px" />

                        </div>
                        <table class="pass">



                            <div>
                                <tr>

                                    <td>
                                        <asp:Label ID="Label1" runat="server" Visible="false" CssClass="bold-label">Name :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" CssClass="form-control"></asp:Label></td>

                                </tr>
                            </div>
                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Visible="false" CssClass="bold-label">Game :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>

                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Visible="false" CssClass="bold-label">ID Number :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>
                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label53" runat="server" Visible="false" CssClass="bold-label">College :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label54" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>

                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label7" runat="server" Visible="false" CssClass="bold-label">Event College :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>
                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label9" runat="server" Visible="false" CssClass="bold-label">Game Date :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label10" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>


                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblpay2" runat="server" Visible="false" CssClass="bold-label">Payment Status :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblsts2" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>

                            </div>

                            <div>

                                <tr>

                                    <td></td>

                                    <td>
                                        <asp:Button ID="Button2" runat="server" Visible="false" Text="paynow" CssClass="btn-submit" OnClick="btnPaynow" />
                                    </td>
                                </tr>
                            </div>

                        </table>

                    </div>

                    <div style="background-color: wheat;">
                        <div>

                            <img src="img/business-card.png" height="80px" width="80px" />

                        </div>
                        <table class="pass">



                            <div>
                                <tr>

                                    <td>
                                        <asp:Label ID="Label11" runat="server" Visible="false" CssClass="bold-label">Name :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label12" runat="server" CssClass="form-control"></asp:Label></td>

                                </tr>
                            </div>
                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label13" runat="server" Visible="false" CssClass="bold-label">Game :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label14" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>

                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label15" runat="server" Visible="false" CssClass="bold-label">ID Number :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label16" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>
                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label55" runat="server" Visible="false" CssClass="bold-label">College :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label56" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>

                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label17" runat="server" Visible="false" CssClass="bold-label">Event College :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label18" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>
                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label19" runat="server" Visible="false" CssClass="bold-label">Game Date :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label20" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>


                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblpay3" runat="server" Visible="false" CssClass="bold-label">Payment Status :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblsts3" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>

                            </div>

                            <div>

                                <tr>

                                    <td></td>

                                    <td>
                                        <asp:Button ID="Button3" runat="server" Visible="false" Text="paynow" CssClass="btn-submit" />
                                    </td>
                                </tr>
                            </div>

                        </table>
                    </div>

                    <div style="background-color: wheat;">
                        <div>

                            <img src="img/business-card.png" height="80px" width="80px" />

                        </div>



                        <table class="pass">



                            <div>
                                <tr>

                                    <td>
                                        <asp:Label ID="Label21" runat="server" Visible="false" CssClass="bold-label">Name :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label22" runat="server" CssClass="form-control"></asp:Label></td>

                                </tr>
                            </div>
                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label23" runat="server" Visible="false" CssClass="bold-label">Game :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label24" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>

                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label25" runat="server" Visible="false" CssClass="bold-label">ID Number :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label26" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>
                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label57" runat="server" Visible="false" CssClass="bold-label">College :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label58" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>

                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label27" runat="server" Visible="false" CssClass="bold-label">Event College :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label28" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>
                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label29" runat="server" Visible="false" CssClass="bold-label">Game Date :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label30" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>



                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblpay4" runat="server" Visible="false" CssClass="bold-label">Payment Status :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblsts4" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>

                            </div>

                            <div>

                                <tr>

                                    <td></td>

                                    <td>
                                        <asp:Button ID="Button4" runat="server" Visible="false" Text="paynow" CssClass="btn-submit" />
                                    </td>
                                </tr>
                            </div>


                        </table>

                    </div>


                    <div style="background-color: wheat;">
                        <div>

                            <img src="img/business-card.png" height="80px" width="80px" />
                        </div>

                        <table class="pass">



                            <div>
                                <tr>

                                    <td>
                                        <asp:Label ID="Label31" runat="server" Visible="false" CssClass="bold-label">Name :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label32" runat="server" CssClass="form-control"></asp:Label></td>

                                </tr>
                            </div>
                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label33" runat="server" Visible="false" CssClass="bold-label">Game :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label34" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>

                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label35" runat="server" Visible="false" CssClass="bold-label">ID Number :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label36" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>
                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label59" runat="server" Visible="false" CssClass="bold-label">College :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label60" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>

                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label37" runat="server" Visible="false" CssClass="bold-label">Event College :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label38" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>
                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label39" runat="server" Visible="false" CssClass="bold-label">Game Date :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label40" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>

                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblpay5" runat="server" Visible="false" CssClass="bold-label">Payment Status :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblsts5" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>

                            </div>



                            <div>

                                <tr>

                                    <td></td>

                                    <td>
                                        <asp:Button ID="Button5" runat="server" Visible="false" Text="paynow" CssClass="btn-submit" />
                                    </td>
                                </tr>
                            </div>

                        </table>
                    </div>

                    <div style="background-color: wheat;">
                        <div>

                            <img src="img/business-card.png" height="80px" width="80px" />

                        </div>

                        <table class="pass">



                            <div>
                                <tr>

                                    <td>
                                        <asp:Label ID="Label41" runat="server" Visible="false" CssClass="bold-label">Name :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label42" runat="server" CssClass="form-control"></asp:Label></td>

                                </tr>
                            </div>
                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label43" runat="server" Visible="false" CssClass="bold-label">Game :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label44" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>

                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label45" runat="server" Visible="false" CssClass="bold-label">ID Number :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label46" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>
                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label61" runat="server" Visible="false" CssClass="bold-label">College :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label62" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>

                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label47" runat="server" Visible="false" CssClass="bold-label">Event College :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label48" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>
                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label49" runat="server" Visible="false" CssClass="bold-label">Game Date :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label50" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>
                            </div>
                            <div>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblpay6" runat="server" Visible="false" CssClass="bold-label">Payment Status :</asp:Label></td>
                                    <td>
                                        <asp:Label ID="lblsts6" runat="server" CssClass="form-control"></asp:Label></td>
                                </tr>

                            </div>

                            <div>

                                <tr>

                                    <td></td>

                                    <td>
                                        <asp:Button ID="Button6" runat="server" Visible="false" Text="paynow" CssClass="btn-submit" />
                                    </td>
                                </tr>
                            </div>


                        </table>
                    </div>

                </div>
            </div>
        </div>

        <div class="container">
            <p id="htext">Upcoming Events....</p>
            <div class="reviews">
                <div>
                    <div>
                        <img src="img/Cosmos%20Jallosh.png" style="border-radius: 50%;" class="clickable-image" />
                        <h3>Bhavans Colllege</h3>
                        <p>Coming Soon</p>
                        <h3>Fest name</h3>
                    </div>
                    <p>
                        4RFP+XCH, JP Rd, Old D N Nagar, Munshi Nagar, Andheri West, Mumbai, Maharashtra 400058
                    </p>
                </div>
                <div>
                    <div>
                        <img src="img/KHWAISH.png" class="clickable-image" />

                        <h3>chandrabhan College</h3>
                        <p>Coming Soon</p>
                        <h3>Fest name</h3>
                    </div>
                    <p>
                        4W83+H4W, Adi Shankaracharya Marg, Powai Vihar Complex, Powai, Mumbai, Maharashtra 400076
                    </p>
                </div>
                <div>
                    <div>
                        <img src="img/Talenziaa.png" class="clickable-image" />

                        <h3>S.M shetty colege</h3>
                        <p>Coming Soon</p>
                        <h3>Fest name</h3>
                    </div>
                    <p>
                        Bunts Sangha's S.M. Shetty Educational Institutions, near Jal Vayu Vihar, Hiranandani Gardens, MHADA Colony 20, Powai, Mumbai, Maharashtra 400076
                    </p>
                </div>
            </div>
        </div>




    </body>
    <script>
        var images = document.querySelectorAll(".clickable-image");
        images.forEach(function (image) {
            image.addEventListener("click", function () {
                alert("Coming Soon !!!!! 😁");
            });
        });
    </script>
</asp:Content>
