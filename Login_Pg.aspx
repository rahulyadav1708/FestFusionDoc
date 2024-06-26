﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login_Pg.aspx.cs" Inherits="Login_Pg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Login Page</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Raleway:400,700');

        *, *:before, *:after {
            box-sizing: border-box
        }

        * {
            cursor: url("img/cursor.svg"), auto;
        }

        body {
            min-height: 100vh;
            font-family: 'Raleway', sans-serif;
        }

        .container {
            position: absolute;
            width: 100%;
            height: 100%;
            overflow: hidden;
            &:hover,&:active

        {
            .top, .bottom

        {
            &:before, &:after

        {
            margin-left: 200px;
            transform-origin: -200px 50%;
            transition-delay: 0s;
        }

        }

        .center {
            opacity: 1;
            transition-delay: 0.2s;
        }

        }
        }

        .top, .bottom {
            &:before, &:after

        {
            content: '';
            display: block;
            position: absolute;
            width: 200vmax;
            height: 200vmax;
            top: 50%;
            left: 50%;
            margin-top: -100vmax;
            transform-origin: 0 50%;
            transition: all 0.5s cubic-bezier(0.445, 0.05, 0, 1);
            z-index: 10;
            opacity: 0.65;
            transition-delay: 0.2s;
        }

        }

        .top {
            &:before

        {
            transform: rotate(45deg);
            background: #e46569;
        }

        &:after {
            transform: rotate(135deg);
            background: #ecaf81;
        }

        }

        .bottom {
            &:before

        {
            transform: rotate(-45deg);
            background: #60b8d4;
        }

        &:after {
            transform: rotate(-135deg);
            background: #3745b5;
        }

        }

        .center {
            position: absolute;
            width: 400px;
            height: 400px;
            top: 50%;
            left: 50%;
            margin-left: -200px;
            margin-top: -200px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 30px;
            opacity: 0;
            transition: all 0.5s cubic-bezier(0.445, 0.05, 0, 1);
            transition-delay: 0s;
            color: #333;
            input

        {
            width: 100%;
            padding: 15px;
            margin: 5px;
            border-radius: 1px;
            border: 1px solid #ccc;
            font-family: inherit;
        }

        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
        <div class="container" onclick="">
            <div class="top"></div>
            <div class="bottom"></div>
            <div class="center">
                <h2>Please Sign In</h2>
                <asp:TextBox ID="TextBox1" placeholder="email" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox2" placeholder="password" runat="server" TextMode="Password"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Style="width: 240px" Text="Register" OnClick="Button2_Click" />
            </div>
        </div>
    </form>
</body>
</html>
