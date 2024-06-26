<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="js/JScript.js"></script>
    <link href="Styles/login.css" rel="stylesheet" />
</head>
<body id="log">
    <img src="img/bg.jpg" alt="Alternate text" class="besidepic" />

    <div>

        <p style="color: springgreen;">WELCOME TO FESTFUSION
            <br />
            <br />
            <br />
            A college fest is an exciting event that brings together students
            <br />
            for a variety of activities including competitions, performances,<br />
            and cultural showcases, fostering a lively atmosphere of
            <br />
            creativity and camaraderie on campus. </p>
    </div>

    <!--<img src="img/profile.png"  alt="Alternate text" class="helplog"/> -->
    <!--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/help.aspx" CssClass="helptxt">Help</asp:HyperLink>-->
    <!--<img src="img/1.jpg"  alt="Alternate text" class="user1"/> -->

    <div class="loginbx">

        <img src="img/user icon.png" alt="Alternate text" class="user" />

        <h2>Log In Here </h2>

        <form runat="server">
            <asp:Label Text="UserName *" CssClass="lblemail" runat="server" />&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Enter UserName !!</asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="txtemail" placeholder="Enter UserName" />
            <asp:Label Text="Password *" CssClass="lblpass" runat="server" />
            &nbsp;&nbsp;&nbsp;
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Enter Password !!</asp:RequiredFieldValidator>
            <asp:TextBox runat="server" CssClass="txtpass" placeholder="********" ID="TextBox2" TextMode="Password" />
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>

             <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red" Font-Bold="true" ></asp:Label><br />
            <asp:Button Text="Sign In" CssClass="btnsubmit" runat="server" ID="button1" OnClick="button1_Click" Height="35px" Width="250px" />
            
            <br />
            <asp:LinkButton Text="Forget Password" CssClass="btnforget" runat="server" CausesValidation="false"  /><br /><br />
             <asp:LinkButton Text="New to Site? Register now!" CssClass="btnregister" CausesValidation="false" runat="server" OnClick="Unnamed4_Click"   />


        </form>
    </div>

    <script type="text/javascript">
        function loggingin() {
            var result = confirm("press ok to log in");
            if (result) {
                // The user clicked OK, perform logout action here
                alert("Logging in...");
                // You can add code here to handle the logout action, like redirecting to a logo<a href="login.aspx">login.aspx</a>ut page or performing any necessary server-side tasks.

            } else {
                // The user clicked Cancel, do nothing or handle accordingly
                alert("Login error.");
            }
        }
    </script>





</body>

</html>
