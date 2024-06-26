<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/signup.css" rel="stylesheet" />
</head>
<body id="log1">
 
    
    <!----<img src="img/profile.png"  alt="Alternate text" class="helplog"/>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/help.aspx" CssClass="helptxt">Help</asp:HyperLink>
         <img src="img/1logo.png"  alt="Alternate text" class="user1"/>--->
      
     <div class="signupbox">
           
        
        
         <h2 style="color:yellow;">Register Here </h2>
     
         <form runat="server">
             <asp:Label Text="Name *" CssClass="lblemail" runat="server" />&emsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red">Enter Name!!</asp:RequiredFieldValidator>
             <asp:TextBox ID="TextBox3"  runat="server" CssClass="txtemail" placeholder="Enter Name"   />
              <asp:Label Text="DOB *" CssClass="lblemail" runat="server" />&emsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red">Enter DOB!!</asp:RequiredFieldValidator>
             <asp:TextBox ID="TextBox4"  runat="server" CssClass="txtemail" placeholder="Enter DOB"   />

             <asp:Label Text="UserName *" CssClass="lblemail" runat="server" />&emsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red">Enter UserName !!</asp:RequiredFieldValidator>
             <asp:TextBox ID="TextBox1"  runat="server" CssClass="txtemail" placeholder="Enter Email"   />
             <asp:Label Text="Password *" CssClass="lblpass" runat="server" />&emsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red">Enter Password !!</asp:RequiredFieldValidator>
             <asp:TextBox  runat="server" CssClass="txtpass"  placeholder="********" ID="TextBox2" TextMode="Password"/>
            <asp:Label Text="Confirm Password *" CssClass="lblpass" runat="server" />&emsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red">Enter Confirm Password !!</asp:RequiredFieldValidator> 
         <asp:TextBox  runat="server" CssClass="txtpass"  placeholder="********" ID="TextBox5" TextMode="Password"/>
             <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox5" ErrorMessage="CompareValidator" ForeColor="Red">Password Mismatch !!</asp:CompareValidator>
            <br />
           
             <asp:Button Text="Sign Up" CssClass="btnsubmit" runat="server" ID="button1"  Height="35px" Width="400px" OnClick="button1_Click"     />
             
  
             

             
             
             
    
         </form>
     </div>  
    


    
</body>
</html>
