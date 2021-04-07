<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Navbar.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="JobPortal.WebPages.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="region" runat="server">
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <title>Login V4</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->
        <link rel="icon" type="image/png" href="../LoginAssets/images/icons/favicon.ico" />
        <!--===============================================================================================-
	<link rel="stylesheet" type="text/css" href="../LoginAssets/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="../LoginAssets/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="../LoginAssets/fonts/iconic/css/material-design-iconic-font.min.css" />
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="../LoginAssets/vendor/animate/animate.css" />
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="../LoginAssets/vendor/css-hamburgers/hamburgers.min.css" />
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="../LoginAssets/vendor/animsition/css/animsition.min.css" />
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="../LoginAssets/vendor/select2/select2.min.css" />
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="../LoginAssets//daterangepicker/daterangepicker.css" />
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="../LoginAssets/css/util.css" />
        <link rel="stylesheet" type="text/css" href="../LoginAssets/css/main.css" />
        <!--===============================================================================================-->
    </head>
    <body>

        <div class="limiter">
            <div class="container-login100" style="background-image: url('../LoginAssets/images/bg-011.png');">
                <div class="wrap-login100 p-l-55 p-r-55 p-t-37 p-b-54" style="margin-top: 70px; box-shadow: 0px 0px 11px 4px rgba(49,49,49,0.75); -webkit-box-shadow: 0px 0px 11px 4px rgba(49,49,49,0.75); -moz-box-shadow: 0px 0px 11px 4px rgba(49,49,49,0.75);">
                    <form class="login100-form validate-form" runat="server" autocomplete="off">
                        <span class="login100-form-title p-b-20">Login
                        </span>

                        <div class="wrap-input100 validate-input m-b-3" data-validate="Username is reauired">
                            <span class="label-input100">Username</span>
                            <asp:TextBox class="input100" ID="txtUserName" runat="server" placeholder="Type your username" Text=""></asp:TextBox>
                            <span class="focus-input100" data-symbol="&#xf206;"></span>
                        </div>
                        <div>
                            <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="txtUserName" ErrorMessage="*UserName required" Text="" ID="req"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUserName"
                                    ErrorMessage="Please enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">  
                                </asp:RegularExpressionValidator>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate="Password is required">
                            <span class="label-input100">Password</span>
                            <asp:TextBox runat="server" class="input100" ID="txtpassword" TextMode="Password" placeholder="Type your password" Text=""></asp:TextBox>
                            <span class="focus-input100" data-symbol="&#xf190;"></span>
                        </div>
                        <div>
                            <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="txtpassword" ErrorMessage="*Password required" Text="" ID="RequiredFieldValidator1"></asp:RequiredFieldValidator>
                        </div>

                        <div class="text-right p-t-8 p-b-31">
                            <asp:Label ID="llb" runat="server" Visible="false" ForeColor="Red"></asp:Label>
                            <%--<a href="#">Forgot password?
                            </a>--%>
                        </div>

                        <div class="container-login100-form-btn">
                            <div class="wrap-login100-form-btn">
                                <div class="login100-form-bgbtn">
                                </div>
                                <button runat="server" class="login100-form-btn">
                                    <asp:Button runat="server" BackColor="Transparent" Text="LOGIN" ForeColor="White" Width="408px" OnClick="login" />
                                </button>
                            </div>
                        </div>


                    </form>
                </div>
            </div>
        </div>


        <div id="dropDownSelect1"></div>

        <!--===============================================================================================-->
        <script src="../LoginAssets/vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="../LoginAssets/vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="../LoginAssets/vendor/bootstrap/js/popper.js"></script>
        <script src="../LoginAssets/vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="../LoginAssets/vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="../LoginAssets/vendor/daterangepicker/moment.min.js"></script>
        <script src="../LoginAssets/vendor/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================-->
        <script src="../LoginAssets/vendor/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
        <script src="../LoginAssets/js/main.js"></script>

    </body>
    </html>
</asp:Content>
