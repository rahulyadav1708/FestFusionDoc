<%@ Page Language="C#" AutoEventWireup="true" CodeFile="success.aspx.cs" Inherits="success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Succes</title>
    <style>
        *{
            cursor: url("img/cursor.svg"), auto;
        }
        .button-89 {
            --b: 3px; /* border thickness */
            --s: .45em; /* size of the corner */
            --color: #373B44;
            padding: calc(.5em + var(--s)) calc(.9em + var(--s));
            color: var(--color);
            --_p: var(--s);
            background: conic-gradient(from 90deg at var(--b) var(--b),#0000 90deg,var(--color) 0) var(--_p) var(--_p)/calc(100% - var(--b) - 2*var(--_p)) calc(100% - var(--b) - 2*var(--_p));
            transition: .3s linear, color 0s, background-color 0s;
            outline: var(--b) solid #0000;
            outline-offset: .6em;
            font-size: 16px;
            border: 0;
            user-select: none;
            -webkit-user-select: none;
            touch-action: manipulation;
        }

            .button-89:hover,
            .button-89:focus-visible {
                --_p: 0px;
                outline-color: var(--color);
                outline-offset: .05em;
            }

            .button-89:active {
                background: var(--color);
                color: #fff;
            }

        a{
            text-decoration:none;
            color:#F16522;
        }
    </style>
</head>
<body  bgcolor="#d7d7d7" class="generic-template" style="-moz-osx-font-smoothing: grayscale; -webkit-font-smoothing: antialiased; background-color: #d7d7d7; margin: 0; padding: 0;>
    <form id="form1" runat="server">

        <!-- Content Start -->
        <table cellpadding="0" cellspacing="0" cols="1" bgcolor="#d7d7d7" align="center" style="max-width: 600px;">
            <tr bgcolor="#d7d7d7">
                <td height="50" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
            </tr>

            <!-- This encapsulation is required to ensure correct rendering on Windows 10 Mail app. -->
            <tr bgcolor="#d7d7d7">
                <td style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;">
                    <!-- Seperator Start -->
                    <table cellpadding="0" cellspacing="0" cols="1" bgcolor="#d7d7d7" align="center" style="max-width: 600px; width: 100%;">
                        <tr bgcolor="#d7d7d7">
                            <td height="30" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                        </tr>
                    </table>
                    <!-- Seperator End -->

                    <!-- Generic Pod Left Aligned with Price breakdown Start -->
                    <table align="center" cellpadding="0" cellspacing="0" cols="3" bgcolor="white" class="bordered-left-right" style="border-left: 10px solid #d7d7d7; border-right: 10px solid #d7d7d7; max-width: 600px; width: 100%;">
                        <tr height="50">
                            <td colspan="3" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                        </tr>
                        <tr align="center">
                            <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                            <td class="text-primary" style="color: #F16522; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;">
                                <img src="http://dgtlmrktng.s3.amazonaws.com/go/emails/generic-email-template/tick.png" alt="GO" width="50" style="border: 0; font-size: 0; margin: 0; max-width: 100%; padding: 0;">
                            </td>
                            <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                        </tr>
                        <tr height="17">
                            <td colspan="3" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                        </tr>
                        <tr align="center">
                            <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                            <td class="text-primary" style="color: #F16522; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;">
                                <h1 style="color: #F16522; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 30px; font-weight: 700; line-height: 34px; margin-bottom: 0; margin-top: 0;">Payment received</h1>
                            </td>
                            <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                        </tr>
                        <tr height="30">
                            <td colspan="3" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                        </tr>
                        <tr align="left">
                            <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                            <td style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;">
                                <p style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 22px; margin: 0;">
                                    Hi
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>, 
                                </p>
                            </td>
                            <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                        </tr>
                        <tr height="10">
                            <td colspan="3" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                        </tr>
                        <tr align="left">
                            <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                            <td style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;">
                                <p style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 22px; margin: 0;">Your transaction was successful!</p>
                                <br>
                                <p style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 22px; margin: 0;">
                                    <strong>Payment Details:</strong><br />

                                    Order ID:
                                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                                    <br />
                                    Payment ID:
                                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label><br />
                                </p>
                                <br>
                                <p style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 22px; margin: 0;">
                                    We advise to keep this email for future reference.&nbsp;&nbsp;&nbsp;&nbsp;<br />
                                </p>
                            </td>
                            <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                        </tr>
                        <tr height="30">
                            <td style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                            <td style="border-bottom: 1px solid #D3D1D1; color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;">
                                <button class="button-89" role="button"><a href="Home.aspx">Back to home</a></button>
                            </td>
                            <td style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                        </tr>
                        <tr height="30">
                            <td colspan="3" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                        </tr>


                        <tr height="50">
                            <td colspan="3" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                        </tr>

                    </table>
                    <!-- Generic Pod Left Aligned with Price breakdown End -->

                    <!-- Seperator Start -->
                    <table cellpadding="0" cellspacing="0" cols="1" bgcolor="#d7d7d7" align="center" style="max-width: 600px; width: 100%;">
                        <tr bgcolor="#d7d7d7">
                            <td height="50" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                        </tr>
                    </table>
                    <!-- Seperator End -->

                </td>
            </tr>
        </table>
        <!-- Content End -->


    </form>
</body>
</html>
