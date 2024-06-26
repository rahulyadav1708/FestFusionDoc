<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reg_pg.aspx.cs" Inherits="Reg_pg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
   
    <link href="css/Reg_pg.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body>
  <div class="container">
        <form method="post" runat="server" autocomplete="on">
            <div class="box">
                <asp:Label ID="Label1" runat="server" for="firstName" CssClass="fl fontLabel" Text="Full Name:"></asp:Label>
                <div class="new iconBox">
                    <i class="fa fa-user" aria-hidden="true"></i>
                </div>
                <div class="fr">
                    <asp:TextBox ID="TextBox2" placeholder="First Name" CssClass="textBox" autofocus="on" runat="server"></asp:TextBox>
                </div>
                <div class="clr"></div>
            </div>

            <div class="box">
                <asp:Label ID="Label2" for="secondName" CssClass="fl fontLabel" runat="server" Text="Location"></asp:Label>
                <div class="fl iconBox"><i class="fa fa-user" aria-hidden="true"></i></div>
                <div class="fr">
                    <asp:TextBox ID="TextBox3" placeholder="Location" CssClass="textBox" runat="server"></asp:TextBox>
                </div>
                <div class="clr"></div>
            </div>

            <div class="box">
                <asp:Label ID="Label3" for="phone" CssClass="fl fontLabel" runat="server" Text="Phone no"></asp:Label>
                <div class="fl iconBox"><i class="fa fa-phone-square" aria-hidden="true"></i></div>
                <div class="fr">
                    <asp:TextBox ID="TextBox4" MaxLength="10" placeholder="Phone No." CssClass="textBox" runat="server" TextMode="Phone"></asp:TextBox>
                </div>
                <div class="clr"></div>
            </div>
            <div class="box">
                <asp:Label ID="Label4" for="email" CssClass="fl fontLabel" runat="server" Text="Email Id: "></asp:Label>
                <div class="fl iconBox"><i class="fa fa-envelope" aria-hidden="true"></i></div>
                <div class="fr">
                    <asp:TextBox ID="TextBox5" placeholder="Email Id" CssClass="textBox" runat="server" TextMode="Email"></asp:TextBox>
                </div>
                <div class="clr"></div>
            </div>

            <div class="box">
                <asp:Label ID="Label5" for="username" CssClass="fl fontLabel" runat="server">Username</asp:Label>
                <div class="fl iconBox"><i class="fa fa-phone-square" aria-hidden="true"></i></div>
                <div class="fr">
                    <asp:TextBox ID="TextBox1" runat="server" MaxLength="10" placeholder="username" CssClass="textBox"></asp:TextBox>
                </div>
                <div class="clr"></div>
            </div>
            <div class="box">
                <asp:Label ID="Label6" for="password" CssClass="fl fontLabel" runat="server" Text="Password"></asp:Label>
                <div class="fl iconBox"><i class="fa fa-key" aria-hidden="true"></i></div>
                <div class="fr">
                    <asp:TextBox ID="TextBox6" placeholder="Password" CssClass="textBox" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <div class="clr"></div>
            </div>

            <div class="box terms">
                <input type="checkbox" name="Terms" required />

                <a href="tnc_pg.aspx" style="text-decoration: none;">I accept the terms and conditions</a>

            </div>

            <div class="box">
                <a href="Login_Pg.aspx" style="float:left; text-decoration:none;padding-top:6px;font-size:14px;">Already registered? Login</a>
                <asp:Button ID="Button1" value="SUBMIT" CssClass="submit" runat="server" OnClick="Button1_Click" Text="Submit" />
            </div>
        </form>
    </div>
</body>
</html>
