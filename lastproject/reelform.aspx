<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="reelform.aspx.cs" Inherits="reelform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <style type="text/css">
        body {
            background-color: aqua;
        }
    </style>
    <style type="text/css">         

        .form-container {
            width: 400px;
            margin: 50px auto;
            background-color:darkmagenta;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label, ul {
            list-style-type: none;
            display: block;
            font-size: 14px;
            margin-bottom: 5px;
            color: white;
        }
        .form-group input[type="text"],
        .form-group select {
            width: calc(100% - 24px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 14px;
        }
        .form-group input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        .form-group input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>

    <div  class="slide-1">
      
    <img   class="slide_image" src="img/Reel Making.jpg" />
        
      
      <p class="slide-p">
        Safety precautions during COVID-19. We’re taking additional steps and
        precautionary measures to protect our community from COVID-19.
        <a href=""> Know more</a>
      </p>
    </div>
    <br />
    <br />


    <h2 id="mtext">REEL MAKING</h2>
    <br />

    <p style="font-size:23px;margin-left:100px;margin-right:100px;">"In every reel, there's a story waiting to be told. It's the magic of capturing moments that makes filmmaking an eternal journey."<br /> <br />
        Reel making is the art of condensing life's tapestry into short, impactful moments. It's about telling a story in the blink of an eye.This term is commonly used in the context of social media platforms like Instagram, TikTok, or YouTube, where users create and share short video content.
    </p>
    <br />

    <div style="margin-left:100px;">
        
    <h3>Rules and Regulations.</h3>
        <br />
    <ol style="font-size:21px;">
        <li>Teams may consist of a maximum of three members.</li>
        <br /><li>Reels must not exceed 2 minutes in length.</li>
        <br /><li> Explicit content, violence, and hate speech are strictly prohibited.
</li><br />
        <li>All content must be original, and participants must have the rights to use any third-party material.</li><br />
        <li>Entries will be judged based on creativity, storytelling, technical proficiency, and adherence to the theme.
The decision of the judging panel is final.</li>

    </ol><br />
        
        <p style="font-size:21px;">Please check the box to confirm that you understand and agree to the rules and regulations.</p><br />
        <asp:CheckBox ID="chkAgree" runat="server" Text="I understand and agree to the rules and regulations" />
    </div>

    <div class="form-container">
            <div class="form-group">
                <label for="txtName">GAME</label>
                <input type="text" id="txtGame" runat="server" readonly="readonly" />
            </div>
            
            <div class="form-group">
                <label for="txtcollege">Event College</label>
                <input type="text" id="Txtcollege" runat="server" readonly="readonly" />
            </div>

            <div class="form-group">
                <label for="txtName">Event Date</label>
                <input type="text" id="TxtEventDate" runat="server" readonly="readonly" />
            </div>
            <br />
           <div class="form-group">
                <label for="txtName">Name *</label>
                <input type="text" id="txtName" runat="server" />
                <asp:RequiredFieldValidator ID="rfvName" ControlToValidate="txtName" runat="server" ForeColor="Red" ErrorMessage="Name is required!!." />
            </div>
            <div class="form-group">
                <label for="txtCollegeName">College Name *</label>
                <input type="text" id="txtCollegeName" runat="server" />
                <asp:RequiredFieldValidator ID="rfvCollegeName" ControlToValidate="txtCollegeName" runat="server" ForeColor="Red" ErrorMessage="College Name is required." />
            </div>
            <div class="form-group">
                <label for="ddlClass">Class *</label>
                <asp:DropDownList ID="ddlClass" runat="server">
                    <asp:ListItem Text="--Select class--" Value=""></asp:ListItem>
                    <asp:ListItem Value="BSCIT">BSCIT</asp:ListItem>
                    <asp:ListItem Value="BFM">BFM</asp:ListItem>
                    <asp:ListItem Value="BCom">BCom</asp:ListItem>
                    </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvClass" ControlToValidate="ddlClass" runat="server"  ForeColor="Red" ErrorMessage="Class is required." InitialValue="" />
            </div>
            <div class="form-group">
                <label for="ddlClassYear">Class Year *</label>
                <asp:DropDownList ID="ddlClassYear" runat="server">
                    <asp:ListItem Text="--Select Year--" Value=""></asp:ListItem>
                    <asp:ListItem Value="FY">FY</asp:ListItem>
                    <asp:ListItem Value="SY">SY</asp:ListItem>
                    <asp:ListItem Value="TY">TY</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvClassYear" ControlToValidate="ddlClassYear" runat="server"  ForeColor="Red" ErrorMessage="Class Year is required." InitialValue="" />
            </div>

            <div class="form-group">
                <label for="txtIDNumber">ID Number *</label>
                <input type="text" id="txtIDNumber" runat="server" />
                <asp:RequiredFieldValidator ID="rfvIDNumber" ControlToValidate="txtIDNumber" runat="server" ForeColor="Red" ErrorMessage="  Required ID Number." />
            </div>

            

            <ul class="form-group">
                <li>Fill the all the fields to enroll yourself to the event.</li>
                <li>make sure the information provided is all correct</li>
            </ul>
            <div class="form-group">
                <!-- <input type="submit" value="Submit"  onclick="button1_click"/>-->

                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />


            </div>
        </div>

    <div >
        <h3 id="mtext">Event Head </h3>
        <br /><br /><br />
        <div style="display:flex; justify-content:center; justify-content:space-around; margin-right:10%; margin-left:10%;" > 
        <div>
              <img src="img/rahulpic.jpg" height="150px;" width="150px; " style="
  border-radius: 50%;"/>
            <h3>Event Head</h3>
            <p>
             Rahul yadav 
            </p>
           
          </div>

        <div>
              <img src="img/Lucky Ali.jpg" height="150px;" width="150px; " style="
  border-radius: 50%;"/>
            <h3>Management</h3>
            <p>
         Lucky Ali
            </p>
           
          </div>

        <div>
              <img src="img/Vishal Yadav.jpg" height="150px;" width="150px; " style="
  border-radius: 50%;"/>
            <h3>Security</h3>
            <p>
           Vishal Yadav
            </p>
           
          </div>
            <div>
              <img src="img/Sohail Shaikh.jpg" height="150px;" width="150px; " style="
  border-radius: 50%;"/>
            <h3>Technical</h3>
            <p>
            Sohail Shaikh
            </p>
           
          </div>

            <div>
              <img src="img/Siddhesh Teli.jpg" height="150px;" width="150px; " style="
  border-radius: 50%;"/>
            <h3>Photograph</h3>
            <p>
            Siddhesh Teli
            </p>
           
          </div>

            
            </div>
            </div>

    <div  style="background-color:gainsboro;">
        <h1 style="margin-left:35%; ">EVENT SPONSORS...</h1>
        <p style="margin-left:33%;">Ready to join the action?Secure your Spot by Clicking on Your </br>&emsp;&emsp;Desired Game and Fill out the Registration form.</p>


        
        <br /><br /><br />
        <div style="display:flex; justify-content:center; justify-content:space-around; margin-right:10%; margin-left:10%;" > 
        <div>
             <a href="https://in.louisvuitton.com/">
              <img src="img/LOUIS VUITTON.jpg" height="150px;" width="150px; " style="
  border-radius: 10%;"/></a>
           
            
           
          </div>

        <div>
              <a href="https://www.boat-lifestyle.com/">
              <img src="img/BOAT.png" height="150px;" width="150px; " style="
  border-radius: 10%;"/></a>
            
           
          </div>

        <div>
              <a href="https://blinkit.com/">
               <img src="img/BLINKIT.png" height="150px;" width="150px; " style="
  border-radius: 10%;"/></a>
            
           
          </div>
            <div>
            <a href="https://www.hm.com">
             <img src="img/HM.jpg" height="150px;" width="150px; " style="
  border-radius: 10%;"/></a>
           
            
           
          </div>

            <div>
              <a href="https://byjus.com/">
              <img src="img/BYJUS.png" height="150px;" width="200px; " style="
  border-radius: 10%;"/></a>
           
            
           
          </div>

            
            </div>
        <br />
            </div>

</asp:Content>

