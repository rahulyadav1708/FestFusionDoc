<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homepagelogin.aspx.cs" Inherits="homepagelogin2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/homepage.css" rel="stylesheet" />
    <link href="Styles/index.css" rel="stylesheet" />
    <link href="Styles/navbar.css" rel="stylesheet" />
</head>
<body>
   <form id="form2" runat="server">
         <div>
    <div class="topnav" id="myTopnav" style="background-color: rgba(34, 109, 84, 0.553);" >
     
      <div id="mid"
        >
      <a href="#news"></a>
      <a href="./index.html">Home</a>

        <img 
            class="loginicon"
            src="img/user%20icon.png" />
      
     
      <a class="shift" href="Login.aspx">Login</a>
      
      <a href="javascript:void(0);" class="icon" onclick="myFunction()">
        <i class="fa fa-bars"></i>
      </a>
      </div>
    </div> 
  </div>
     <br />

    <hr />
    <div class="top-name">FESTFUSION</div>
    <hr />
  
       

    <!-- slide html  -->

    <div class="slide-1">
      <img
        class="slide_image"
        src="img/festpic.jpg"
        alt=""
      />
      <p class="slide-p">
        Safety precautions during COVID-19. We’re taking additional steps and
        precautionary measures to protect our community from COVID-19.
        <a href=""> Know more</a>
      </p>
    </div>

    <div class="line"></div>
    <!-- image slide  -->

    <marquee direction="right" scrollamount="10">
    <div class="more-photo" >
      <div>
        <img
          src="img/Open Mic.png" height="150px" width="120px"
          alt=""
        />
      </div>

      <div>
        <img
          src="img/Reel Making.jpg"  height="150px" width="120px"          
            alt=""
        />
      </div>

      <div>
        <img
          src="img/Solo Dance.jpg"  height="150px" width="120px"
          alt=""
        />
      </div>

      <div>
      
      <img src="img/Solo Singing.jpg"  height="150px" width="120px" />
         
      
      </div>

      <div>
          <img src="img/Street%20Play.jpg"  height="150px" width="120px"/>
      </div>

      <div>
          <img src="img/Table%20Tennis.jpg"  height="150px" width="120px" />
      </div>

      <div>
          <img src="img/Solo%20Dance.jpg" height="150px" width="120px"/>
      </div>

      <div>
        <img
          src="https://plus.unsplash.com/premium_photo-1676389758875-be52d3176b91?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80"  height="150px" width="120px"
          alt=""
        />
      </div>

      <div>
       <img
          src="img/Reel Making.jpg"  height="150px" width="120px"          
            alt=""
        />
      </div>

      <div>
          <img src="img/Solo Singing.jpg"  height="150px" width="120px" />
      </div>

      <div>
        <img src="img/Table%20Tennis.jpg"  height="150px" width="120px" />
      </div>

      <div>
        <img src="img/Street%20Play.jpg"  height="150px" width="120px"/>
      </div>
    </div>
        </marquee>

    <!-- image slide  -->

    <div class="line"></div>
    <!------------------- page contain  ------------>

    <br />
    <div class="center">
     <button class="nav-button">Register for Event</button>
    </div>

    <br />

    <div class="main">
      <div class="HowItWorks">
        <p id="htext">How It Works</p>

        <div>
          <div>
            <img
              width="15%"
              src="https://cdn3.iconfinder.com/data/icons/social-messaging-ui-color-line/245532/14-512.png"
              alt=""
            />
            <h3>Select College</h3>
            <p>
              Select the college which finds you most easy and fun.
            </p>
          </div>

          <div>
            <img
              width="15%"
              src="https://mixpanel.com/wp-content/uploads/2020/07/icon-09.svg"
              alt=""
            />
            <h3>Select game</h3>
            <p>
              Select the game You want to participte in.
            </p>
          </div>

          <div>
            <img
              width="15%"
              src="https://d1hcxvwj40zhpj.cloudfront.net/images/icons/blue-circle-creditcard.png"
              alt=""
            />
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
    <form id="form1" >
    <div class="container">
      <p id="htext" class="center">Colleges Hosting the Events</p>
      <p id="stext" class="center">
        Participate and Win the Interesting Prize!!!
      </p>

      <div class="cate">
        <div>
          <div>
            <p id="btext">Thakur College</p>
            <p id="stext">
           Thakur Educational Campus, Thakur Village, Kandivali East, Mumbai, Maharashtra 400101
            </p>
          </div>
          <div>
            
              <button type="button" OnClick="return loggingin();">
                  <a href="login.aspx" target="_blank">
              <img src="img/Thakur%20College.jpeg" />
                      </a>
                  </button>
                 
          </div>
        </div>

        <div>
          <div>
            <p id="btext">Tolani College</p>
            <p id="stext">Guru Gobind Singh Marg, Sher E Punjab Colony, Andheri East, Mumbai, Maharashtra 400093</p>
          </div>
          <div>
           
             
               <button type="button" OnClick="return loggingin();">
            <a href="login.aspx" target="_blank">
              <img src="img/Tolani%20College.jpg" />
                  </a></button>
                  
                  
          </div>
        </div>

        <div>
          <div>
            <p id="btext">Valia College</p>
            <p id="stext">Cosmopolitian Education Society Road Andheri, Andheri West, Mumbai, Maharashtra 400053</p>

          </div>
            
            <button type="button" OnClick="return loggingin();">
                <a href="login.aspx" target="_blank">
            <img src="img/Valia%20College.jpeg" />
                    </a>
                </button>
        </div>

        <div>
          <div>
            <p id="btext">Dhanukar College </p>
            <p id="stext">Dixit Rd, Parle Kalpataru CHSL, Vile Parle East,Mumbai, Maharashtra 400057</p>
          </div>
          <div>
             
              <button type="button" OnClick="return loggingin();">
                  <a href="login.aspx" target="_blank">
              <img src="img/Dhanukar%20College.jpg" height="100px"/>
                      </a>
                  </button>
                 
          </div>
        </div>

        <div>
          <div>
            <p id="btext">sathaye Colege</p>
            <p id="stext">Dixit Rd, Satsang CHSL, Navpada, Vile Parle East, Mumbai, Maharashtra 400057</p>
          </div>
          <div>
              
              <button type="button" OnClick="return loggingin();">
                  <a href="login.aspx" target="_blank">
              <img src="img/Sathaye%20College.jpg"  height="100px"/>
                      </a>
                  </button>
                   
          </div>
        </div>

        <div>
          <div>
            <p id="btext">R.J college</p>
            <p id="stext">Station Road Opposite Ghatkopar Station, Ghatkopar West, Mumbai, Maharashtra 400086</p>

          </div>
          <div>
              
              <button type="button" OnClick="return loggingin();">
                  <a href="login.aspx" target="_blank">
              <img src="img/RJ%20College.jpg" height="100px" />
                      </a>
                  </button>
                  
          </div>
        </div>

        <div>
          <div>
            <p id="btext">Somaiya College</p>
            <p id="stext">Vidyanagar, Vidya Vihar East, Ghatkopar East, Mumbai, Maharashtra 400077</p>
          </div>
            
            <button type="button" OnClick="return loggingin();">
                <a href="login.aspx" target="_blank">
            <img src="img/KJ%20somaiya%20College.jpg" height="100px"/>
                    </a>
                </button>
                
        </div>

        <div>
          <div>
            <p id="btext">Browse All Colleges</p>
          </div>
          <div>
            <img
              src="https://arrow.apache.org/img/arrow-logo_chevrons_black-txt_transparent-bg.png"
              alt=""
            />
          </div>
        </div>
      </div>
    </div>
        </form>

    <!-- more photo  -->

    <div class="line"></div>
    <!-- image slide  -->

    <div class="more-photo">
      <div>
        <img
          src="https://images.unsplash.com/photo-1673557143243-39f2995a3bca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
          alt=""
        />
      </div>

      <div>
        <img
          src="https://plus.unsplash.com/premium_photo-1673356713504-d8a6a35eb209?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
          alt=""
        />
      </div>

      <div>
        <img
          src="https://images.unsplash.com/photo-1673557143243-39f2995a3bca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
          alt=""
        />
      </div>

      <div>
        <img
          src="https://plus.unsplash.com/premium_photo-1673356713504-d8a6a35eb209?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
          alt=""
        />
      </div>

      <div>
        <img
          src="https://images.unsplash.com/photo-1673557143243-39f2995a3bca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
          alt=""
        />
      </div>

      <div>
        <img
          src="https://plus.unsplash.com/premium_photo-1673356713504-d8a6a35eb209?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
          alt=""
        />
      </div>

      <div>
        <img
          src="https://images.unsplash.com/photo-1673557143243-39f2995a3bca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
          alt=""
        />
      </div>

      <div>
        <img
          src="https://plus.unsplash.com/premium_photo-1673356713504-d8a6a35eb209?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
          alt=""
        />
      </div>

      <div>
        <img
          src="https://images.unsplash.com/photo-1673557143243-39f2995a3bca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
          alt=""
        />
      </div>

      <div>
        <img
          src="https://plus.unsplash.com/premium_photo-1673356713504-d8a6a35eb209?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
          alt=""
        />
      </div>

      <div>
        <img
          src="https://images.unsplash.com/photo-1673557143243-39f2995a3bca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
          alt=""
        />
      </div>

      <div>
        <img
          src="https://plus.unsplash.com/premium_photo-1673356713504-d8a6a35eb209?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
          alt=""
        />
      </div>
    </div>

    <!-- image slide  -->

    <div class="line"></div>

    <!-- more photo  -->

    <div class="main">
      <div class="why">
        <p>Reviews</p>
        <div>
          <div>
            <div>

                <img src="img/rating.png"  height="80px" width="80px"/>
            </div>

            <div>
             <h3>Hassle-Free Booking</h3>
              <p>
                Simply select the college and eevent and feel the form to participate.
              </p>
            </div>
          </div>

          <div>
            <div>

             <img src="img/rating.png"  height="80px" width="80px"/>

            </div>
            <div>
             <h3>The Best Events</h3>
              <p>
                Our Events are professionally selected to provide the
                best ever experience and results.
              </p>
            </div>
          </div>

          <div>
            <div>
              
                 <img src="img/rating.png"  height="80px" width="80px"/>

            </div>
            <div>
            <h3>Great experience with us</h3>
              <p>
                Our experienced team always ensures that you will always be satisfied with our services.</p>
            </div>
          </div>

          <div>
            <div>
              
                 <img src="img/rating.png"  height="80px" width="80px"/>

            </div>
            <div>
              <h3>Best College Memories</h3>
              <p>
                One of the Best College Memory for the Students.
              </p>
            </div>
          </div>

         <!---- <div>
            <div>
              
                 <img src="img/rating.png"  height="80px" width="80px"/>

            </div>
            <div>
              <h3>Covid health-protocol</h3>
              <p>
                Most of our photographers have been vaccinated and we maintain
                safe distance during the photoshoot
              </p>
            </div>
          </div>--->

         <!--- <div>
            <div>
              
                 <img src="img/rating.png"  height="80px" width="80px"/>

            </div>
            <div>
              <h3>Peace-of-mind</h3>
              <p>
                We understand that plans can change due to unforseen
                circumstances especially during this pandemic, we provide easy
                reschedule up-to 48 hours before your photoshoot
              </p>
            </div>---->
          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <p id="htext">Upcoming Events....</p>
      <div class="reviews">
        <div>
          <div>
              <img src="img/Cosmos%20Jallosh.png"  class="clickable-image"  />
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
              <img src="img/KHWAISH.png"   class="clickable-image" />

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
              <img src="img/Talenziaa.png"  class="clickable-image"  />

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

    

    <!------------------- footer part  ------------>
    <div class="footer">
      <div>
           <div>
                   
                <div style="margin-bottom:10px;"> <a href="https://www.facebook.com/festfusion"> <img style="border-radius:50px;" height="50px;" width="50px; " src="img/facebook.png" /></a> facebook</div> 
               <div > <a href="https://www.google.com/festfusion"> <img style="border-radius:50px;" height="50px;" width="50px; " src="img/google.png" /> </a>google</div> 
               <div > <a href="https://www.instagram.com/festfusion"> <img style="border-radius:50px;" height="50px;" width="50px; " src="img/instagram.png" /> </a>Instagram</div> 
            <div >  <a href="https://www.linkedin.com/festfusion"> <img style="border-radius:50px;" height="50px;" width="50px; " src="img/linkedin.png" /> </a>linkedin</div> 
               </div>
        <div>
          <p>Company</p>
          <li>Blog</li>
          <li>About Us</li>
          <li>Contact Us</li>
          <li>Cities</li>
        </div>
        <div>
          <p>Legal</p>
          <li>Terms Of Service</li>
          <li>Privacy Policy</li>
          <li>Content Guidelines</li>
          <li>Community Guidelines</li>
          <li>3rd Party licenses</li>
        </div>
      </div>
      <hr />
     <p>Icons and images  are downoaded by pixabay.</p>
      <hr />
      <p>
        © Made by Rahul Yadav and Rohan kangane. All rights
        reserved. | Terms Of Service | Privacy Policy
      </p>
    </div>
       </form>
  </body>
    <script type="text/javascript">
        function loggingin() {
            var result = confirm("Login to view the college event");
            if (result) {
                // The user clicked OK, perform logout action here
                alert("Logging in...");
                // You can add code here to handle the logout action, like redirecting to a logo<a href="login.aspx">login.aspx</a>ut page or performing any necessary server-side tasks.
                
            } else {
                // The user clicked Cancel, do nothing or handle accordingly
                alert("Login error.");
            }
        }


       
  var images = document.querySelectorAll(".clickable-image");
  images.forEach(function(image) {
    image.addEventListener("click", function() {
        alert("Coming Soon !!!!! 😁");
    });
  });

     </script>
</html>
