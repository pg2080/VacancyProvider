﻿<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Admin.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="JobPortal.WebPages.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="region" runat="server">

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
    <script type="text/javascript" src=" https://github.com/uxsolutions/bootstrap-datepicker"></script>
    <!--===============================================================================================-->

    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>

    <style>
        .wrap-reg100 {
            width: 790px;
            background: #fff;
            border-radius: 10px;
            overflow: hidden;
        }

        .bri {
            border-right: 20px white solid;
        }


        .ble {
            border-right: 20px white solid;
        }

        .pad {
            padding: 0 0px 0 0px;
            line-height: 0.9;
        }

        }

        inputs200 {
            font-family: Poppins-Medium;
            font-size: 16px;
            color: #333333;
            line-height: 1.2;
            display: block;
            width: 100%;
            height: 55px;
            background: transparent;
            padding: 0 0px 0 0px;
        }

        }
    </style>
    <form runat="server">

        <div class="hero-wrap hero-wrap-2" style="background-image: url('../Assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-end justify-content-start">
                    <div class="col-md-8 ftco-animate text-center text-md-left mb-5">
                        <p class="breadcrumbs mb-0"><span class="mr-3"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span><span>Job Posts</span></p>
                        <h1 class="mb-3 bread">HR List</h1>
                    </div>
                </div>
            </div>
        </div>

        <%--  <div class="limiter">
        <div class="container-login100" >
            <div class="wrap-reg100 p-l-55 p-r-55 p-t-37 p-b-54" style="margin-top: -500px; box-shadow: 0px 0px 11px 4px rgba(49,49,49,0.75); -webkit-box-shadow: 0px 0px 11px 4px rgba(49,49,49,0.75); -moz-box-shadow: 0px 0px 11px 4px rgba(49,49,49,0.75);">
                <div class="login100-form validate-form" runat="server">
                    <span class="login100-form-title p-b-20" style="font-size: 23px">Add New HR
                    </span>


                    <div class="row col-md-12   ">
                        <div class="wrap-input100 col-md-6 mr-0 mt-0 validate-input m-b-0 bri" data-validate="FristName is reauired">
                            <span class="label-input100">Frist Name</span>
                            <asp:TextBox CssClass="input100 pad" ID="fname" runat="server" placeholder="Frist Name" Text=""></asp:TextBox>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100  col-md-6 validate-input ble" data-validate="Last Name is required">
                            <span class="label-input100">Last Name</span>
                            <asp:TextBox runat="server" CssClass="input100 pad" ID="lname" placeholder="Last Name" Text=""></asp:TextBox>
                            <span class="focus-input100"></span>
                        </div>

                    </div>

                    <div class="row col-md-12 ">
                        <div class=" col-md-6 " data-validate="Username is reauired">
                            <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="fname" ErrorMessage="*" Text="" ID="req"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="fname"
                                ErrorMessage="Letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$">  
                            </asp:RegularExpressionValidator>
                        </div>
                        <div class="col-md-6 ">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="lname"
                                ErrorMessage="Letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$">  
                            </asp:RegularExpressionValidator>
                          
                              <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="lname" ErrorMessage="*" Text="" ID="RequiredFieldValidator1"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="row col-md-12 ">
                        <div class="wrap-input100 col-md-6 mr-0 mt-0 validate-input m-b-0 bri" data-validate="Mobile is reauired">
                            <span class="label-input100">Mobile</span>
                            <asp:TextBox CssClass="input100 pad" ID="mobile" runat="server" placeholder="Mobile" Text=""></asp:TextBox>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100  col-md-6 validate-input ble" data-validate="DOB is required">
                            <span class="label-input100">Birth Date</span>
                            <asp:TextBox runat="server" CssClass="input100 pad" ID="DOB" TextMode="Date" placeholder="DOB" Text=""></asp:TextBox>
                            <span class="focus-input100"></span>
                        </div>
                    </div>

                    <div class="row col-md-12 ">
                        <div class=" col-md-6 " data-validate="Username is reauired">
                            <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="mobile" ErrorMessage="*" Text="" ID="RequiredFieldValidator2"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="mobile"
                                ErrorMessage="Not valid Mobile Number" ForeColor="Red" ValidationExpression="[0-9]{10}">  
                            </asp:RegularExpressionValidator>
                        </div>
                        <div class="col-md-6 ">
                            <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="DOB" ErrorMessage="*" Text="" ID="RequiredFieldValidator3"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="wrap-input100 validate-input " data-validate="Address is reauired">
                        <span class="label-input100">Address</span>
                        <asp:TextBox class="input100" ID="add" runat="server" placeholder="Type your Address" Text=""></asp:TextBox>
                        <span class="focus-input100" data-symbol="&#xf206;"></span>
                    </div>

                    <div class=" ">
                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="add" ErrorMessage="*" Text="" ID="RequiredFieldValidator4"></asp:RequiredFieldValidator>
                    </div>

                    <div class="row col-md-12 ">
                        <div class="wrap-input100 col-md-6 mr-0 mt-0 validate-input m-b-0 bri" data-validate="Mobile Number is reauired">
                            <span class="label-input100">Pincode</span>
                            <asp:TextBox CssClass="input100 pad" ID="pin" runat="server" placeholder="Pincode" Text=""></asp:TextBox>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100  col-md-6 validate-input ble" data-validate="Date is required" style="border-bottom: none">
                            <span class="label-input100">State</span>
                            <select runat="server" class="form-control" id="State" name="first-name" required>
                                <option selected="selected" disabled="disabled" value="0">Select state </option>
                                <option value="Gujarat">Gujarat</option>
                            </select>
                        </div>
                    </div>

                    <div class="row col-md-12 ">
                        <div class=" col-md-6 " data-validate="Username is reauired">
                            <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="pin" ErrorMessage="*" Text="" ID="RequiredFieldValidator5"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="pin"
                                ErrorMessage="Please enter valid Pincode" ForeColor="Red" ValidationExpression="\d{6}-?(\d{4})?$">  
                            </asp:RegularExpressionValidator>
                        </div>
                        <div class="col-md-6 ">
                            <asp:RequiredFieldValidator runat="server" InitialValue="0" ForeColor="Red" ControlToValidate="State" ErrorMessage="*select state" Text="" ID="RequiredFieldValidator6"></asp:RequiredFieldValidator>
                        </div>
                    </div>


                    <div class="row col-md-12 ">
                        <div class="wrap-input100 col-md-6 mr-0 mt-0 validate-input m-b-0 bri" data-validate="Username is reauired" style="border-bottom: none">
                            <span class="label-input100">Gender</span>
                            <select runat="server" class="form-control" id="gender" name="first-name" placeholder="First Name" required>
                                <option value="0" selected="selected" disabled="disabled">Select Gender</option>
                                <option value="m">Male</option>
                                <option value="f">Female</option>

                            </select>
                        </div>

                        <div class="wrap-input100  col-md-6 validate-input ble" data-validate="Merial Status is required" style="border-bottom: none">
                            <span class="label-input100">Merital Status</span>
                            <select runat="server" class="form-control" id="mstatus" name="first-name" placeholder="First Name" required>
                                <option value="0" selected="selected" disabled="disabled">Marital Status</option>
                                <option value="1">Single</option>
                                <option value="2">Married</option>

                            </select>
                        </div>
                    </div>


                    <div class="row col-md-12 ">
                        <div class=" col-md-6 " data-validate="Username is reauired">
                            <asp:RequiredFieldValidator runat="server" ForeColor="Red" InitialValue="0" ControlToValidate="gender" ErrorMessage="*Select gender" Text="" ID="RequiredFieldValidator9"></asp:RequiredFieldValidator>

                        </div>
                        <div class="col-md-6 ">
                            <asp:RequiredFieldValidator runat="server" InitialValue="0" ForeColor="Red" ControlToValidate="mstatus" ErrorMessage="*select Merital status" Text="" ID="RequiredFieldValidator10"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="row col-md-12 ">
                        <div class="wrap-input100 col-md-6 mr-0 mt-0 validate-input m-b-0 bri" data-validate="Username is reauired" style="border-bottom: none">
                            <span class="label-input100">Department</span>
                            <select runat="server" class="form-control" id="edq" name="first-name" placeholder="First Name" required>
                                <option value="0 " selected="selected" disabled="disabled">Select Department</option>
                                <option value="IT">IT Department</option>
                                <option value="Electrical">Electrical Department</option>
                                <option value="Sales ">Sales Department</option>
                                <option value="Marketing">Marketing Department</option>
                                <option value="Accounting">Accounting Department</option>
                            </select>
                        </div>

                        <div class="wrap-input100  col-md-6 validate-input ble" data-validate="Resume is required" style="border-bottom: none">
                            <span class="label-input100">Resume</span>
                            <asp:FileUpload runat="server" ID="resume" CssClass="form-control" />
                <%--            <input type="file" runat="server" id="" class="form-control">
                      </div>
                    </div>


                    <div class="row col-md-12 ">
                        <div class=" col-md-6 " data-validate="Username is reauired">
                            <asp:RequiredFieldValidator runat="server" ForeColor="Red" InitialValue="0" ControlToValidate="edq" ErrorMessage="*Select Education qualification" Text="" ID="RequiredFieldValidator11"></asp:RequiredFieldValidator>

                        </div>
                        <div class="col-md-6 ">
                            <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="resume" ErrorMessage="*select Resume PDF" Text="" ID="RequiredFieldValidator12"></asp:RequiredFieldValidator>
                        </div>
                    </div>


                    <div class="row col-md-12">
                        <div class="wrap-input100 col-md-6 mr-0 mt-0 validate-input m-b-0 bri" data-validate="Username is reauired">
                            <span class="label-input100">UserName</span>
                            <asp:TextBox CssClass="input100" ID="txtUserName" runat="server" placeholder="Type your username" Text=""></asp:TextBox>
                            <span class="focus-input100" data-symbol="&#xf206;"></span>
                        </div>


                        <div class="wrap-input100  col-md-6 validate-input ble" data-validate="Password is required">
                            <span class="label-input100">Password</span>
                            <asp:TextBox runat="server" CssClass="input100" ID="txtpassword" placeholder="Type your password" Text=""></asp:TextBox>
                            <span class="focus-input100" data-symbol="&#xf190;"></span>
                        </div>
                    </div>

                    <div class="row col-md-12 ">
                        <div class=" col-md-6 " data-validate="Username is reauired">
                            <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="txtUserName" ErrorMessage="*email required" Text="" ID="RequiredFieldValidator8"></asp:RequiredFieldValidator>
                            <asp:Label ID="emailerr" ForeColor="Red" runat="server"></asp:Label>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtUserName"
                                ErrorMessage="Please enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">  
                            </asp:RegularExpressionValidator>
                        </div>
                        <div class="col-md-6 ">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtpassword"
                                ErrorMessage="use strong Password atlest 1 number 1 capital 1 small letter and 1 special character and min 8 character" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,15}$">  
                            </asp:RegularExpressionValidator>

                                 <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="txtpassword" ErrorMessage="*Password required" Text="" ID="RequiredFieldValidator7"></asp:RequiredFieldValidator>
                        </div>
                    </div>




                    <div class="text-right p-t-8 p-b-31">
                        <a href="#">Forgot password?
                        </a>
                    </div>

                    <div class="container-login100-form-btn">
                        <div class="wrap-login100-form-btn">
                            <div class="login100-form-bgbtn">
                            </div>
                            <button runat="server" class="login100-form-btn">
                                <asp:Button runat="server" BackColor="Transparent" Text="SIGIN IN" ForeColor="White" Width="408px" />
                            </button>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>--%>


        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-reg100 p-l-55 p-r-55 p-t-37 p-b-54" style="margin-top: -700px; margin-left: 100px; box-shadow: 0px 0px 11px 4px rgba(49,49,49,0.75); -webkit-box-shadow: 0px 0px 11px 4px rgba(49,49,49,0.75); -moz-box-shadow: 0px 0px 11px 4px rgba(49,49,49,0.75);">

                    <div class="login100-form validate-form" id="vw" runat="server">
                        <span class="login100-form-title p-b-20" style="font-size: 23px">My Profile
                        </span>


                        <div class="row col-md-12   ">

                            <div class="wrap-input100 col-md-6 mr-0 mt-0 validate-input m-b-0 bri" data-validate="FristName is reauired">
                                <span class="label-input100">Frist Name</span>
                                <asp:TextBox Enabled="false" CssClass="input100 pad" ID="vfname" runat="server" placeholder="Frist Name" Text=''></asp:TextBox>
                                <span class="focus-input100"></span>
                            </div>

                            <div class="wrap-input100  col-md-6 validate-input ble" data-validate="Last Name is required">
                                <span class="label-input100">Last Name</span>
                                <asp:TextBox Enabled="false" runat="server" CssClass="input100 pad" ID="vlname" placeholder="Last Name" Text=''></asp:TextBox>
                                <span class="focus-input100"></span>
                            </div>

                        </div>



                        <div class="row col-md-12 ">
                            <div class="wrap-input100 col-md-6 mr-0 mt-0 validate-input m-b-0 bri" data-validate="Mobile is reauired">
                                <span class="label-input100">Mobile</span>
                                <asp:TextBox CssClass="input100 pad" Enabled="false" ID="vmobile" runat="server" placeholder="Mobile" Text=''></asp:TextBox>
                                <span class="focus-input100"></span>
                            </div>

                            <div class="wrap-input100  col-md-6 validate-input ble" data-validate="DOB is required">
                                <span class="label-input100">Birth Date</span>
                                <asp:TextBox runat="server" Enabled="false" CssClass="input100 pad" ID="vDOB" TextMode="Date" placeholder="DOB" Text=''></asp:TextBox>
                                <span class="focus-input100"></span>
                            </div>
                        </div>
                        <br />

                        <div class="row col-md-12 ">
                            <div class="wrap-input100 validate-input " data-validate="Address is reauired">
                                <span class="label-input100">Address  :</span>
                                <asp:Label class="input100 pad" Enabled="false" ID="vadd" runat="server" placeholder="Type your Address" Text=''></asp:Label>
                                <span class="focus-input100"></span>
                            </div>

                            <div class="col-md-6 ">
                                <%--          <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="add" ErrorMessage="*" Text="" ID="RequiredFieldValidator4"></asp:RequiredFieldValidator>
                                --%>
                            </div>
                        </div>
                        <br />
                        <div class="row col-md-12 ">
                            <%--  <div class="wrap-input100 col-md-6 mr-0 mt-0 validate-input m-b-0 bri" data-validate="Mobile Number is reauired">
                                                    <span class="label-input100">Pincode</span>
                                                    <asp:TextBox CssClass="input100 pad" ID="pin" runat="server" placeholder="Pincode" Text=""></asp:TextBox>
                                                    <span class="focus-input100"></span>
                                                </div>--%>

                            <div class="wrap-input100  col-md-6 validate-input ble" data-validate="Date is required" style="border-bottom: none">
                                <span class="label-input100">State</span>
                                <%--                 <asp:Label class="input100 pad" Enabled="false" ID="Label1" runat="server" placeholder="Type your Address" Text='<%#Eval("") %>'></asp:Label>
                                --%>             <span class="focus-input100"></span>

                                <select runat="server" enabled="false" class="form-control" id="vState" name="first-name" required>
                                    <option selected="selected" disabled="disabled" value="0">Select state </option>
                                    <option value="Gujarat">Gujarat</option>
                                </select>
                            </div>
                            <div class="wrap-input100  col-md-6 validate-input ble" data-validate="Merial Status is required" style="border-bottom: none">
                                <span class="label-input100">Merital Status</span>
                                <select runat="server" enabled="false" class="form-control" id="vmstatus" name="first-name" placeholder="First Name" required>
                                    <option value="0" disabled="disabled">Marital Status</option>
                                    <option value="1">Single</option>
                                    <option value="2">Married</option>
                                </select>
                            </div>
                        </div>


                        <br />
                        <div class="row col-md-12 ">



                            <div class="wrap-input100 col-md-6 mr-0 mt-0 validate-input m-b-0 bri" data-validate="Username is reauired">
                                <span class="label-input100">UserName</span>
                                <asp:TextBox CssClass="input100" Enabled="false" ID="vtxtUserName" runat="server" placeholder="Type your username" Text=""></asp:TextBox>
                                <span class="focus-input100" data-symbol="&#xf206;"></span>
                            </div>

                            <div class=" col-md-6 bri" data-validate="Username is reauired">
                                <br />
                                <br />
                                <asp:LinkButton CssClass="btn btn-md btn-primary pull-right  icon-edit ml-2" OnClick="Unnamed_Click" Text=" " runat="server" ></asp:LinkButton>
                                <asp:LinkButton CssClass="btn btn-md btn-danger pull-right  icon-trash"   OnClick="Unnamed_Clickdel"  Text=" " runat="server"></asp:LinkButton>
                          
                                  </div>

                        </div>




                    </div>

                    <div class="login100-form validate-form" id="edt" visible="false" runat="server">
                        <span class="login100-form-title p-b-20" style="font-size: 23px">Profile
                        </span>


                        <div class="row col-md-12   ">
                            <div class="wrap-input100 col-md-6 mr-0 mt-0 validate-input m-b-0 bri" data-validate="FristName is reauired">
                                <span class="label-input100">Frist Name</span>
                                <asp:TextBox CssClass="input100 pad" ID="fname" runat="server" placeholder="Frist Name" Text=""></asp:TextBox>
                                <span class="focus-input100"></span>
                            </div>

                            <div class="wrap-input100  col-md-6 validate-input ble" data-validate="Last Name is required">
                                <span class="label-input100">Last Name</span>
                                <asp:TextBox runat="server" CssClass="input100 pad" ID="lname" placeholder="Last Name" Text=""></asp:TextBox>
                                <span class="focus-input100"></span>
                            </div>

                        </div>

                        <div class="row col-md-12 ">
                            <div class=" col-md-6 " data-validate="Username is reauired">
                                <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="fname" ErrorMessage="*" Text="" ID="req"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="fname"
                                    ErrorMessage="Letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$">  
                                </asp:RegularExpressionValidator>
                            </div>
                            <div class="col-md-6 ">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="lname"
                                    ErrorMessage="Letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$">  
                                </asp:RegularExpressionValidator>

                                <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="lname" ErrorMessage="*" Text="" ID="RequiredFieldValidator1"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="row col-md-12 ">
                            <div class="wrap-input100 col-md-6 mr-0 mt-0 validate-input m-b-0 bri" data-validate="Mobile is reauired">
                                <span class="label-input100">Mobile</span>
                                <asp:TextBox CssClass="input100 pad" ID="mobile" runat="server" placeholder="Mobile" Text=""></asp:TextBox>
                                <span class="focus-input100"></span>
                            </div>

                            <div class="wrap-input100  col-md-6 validate-input ble" data-validate="DOB is required">
                                <span class="label-input100">Birth Date</span>
                                <asp:TextBox runat="server" CssClass="input100 pad" ID="DOB" TextMode="Date" placeholder="DOB" Text=""></asp:TextBox>
                                <span class="focus-input100"></span>
                            </div>
                        </div>

                        <div class="row col-md-12 ">
                            <div class=" col-md-6 " data-validate="Username is reauired">
                                <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="mobile" ErrorMessage="*" Text="" ID="RequiredFieldValidator2"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="mobile"
                                    ErrorMessage="Not valid Mobile Number" ForeColor="Red" ValidationExpression="[0-9]{10}">  
                                </asp:RegularExpressionValidator>
                            </div>
                            <div class="col-md-6 ">
                                <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="DOB" ErrorMessage="*" Text="" ID="RequiredFieldValidator3"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="wrap-input100 validate-input " data-validate="Address is reauired">
                            <span class="label-input100">Address</span>
                            <asp:TextBox class="input100" ID="address" runat="server" placeholder="Type your Address" Text=""></asp:TextBox>
                            <span class="focus-input100" data-symbol="&#xf206;"></span>
                        </div>

                        <div class=" ">
                            <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="address" ErrorMessage="*" Text="" ID="RequiredFieldValidator4"></asp:RequiredFieldValidator>
                        </div>

                        <div class="row col-md-12 ">
                                   <div class="wrap-input100  col-md-6 validate-input ble" data-validate="Merial Status is required" style="border-bottom: none">
                                <span class="label-input100">Merital Status</span>
                                <select runat="server" class="form-control" id="mstatus" name="first-name" placeholder="First Name" required>
                                    <option value="0" selected="selected" disabled="disabled">Marital Status</option>
                                    <option value="1">Single</option>
                                    <option value="2">Married</option>

                                </select>
                            </div>
                        
                            <div class="wrap-input100  col-md-6 validate-input ble" data-validate="Date is required" style="border-bottom: none">
                                <span class="label-input100">State</span>
                                <select runat="server" class="form-control" id="State" name="first-name" required>
                                    <option selected="selected" disabled="disabled" value="0">Select state </option>
                                    <option value="Gujarat">Gujarat</option>
                                </select>
                            </div>
                        </div>

                        <div class="row col-md-12 ">
                            <div class=" col-md-6 " data-validate="Username is reauired">
                                <asp:RequiredFieldValidator runat="server" InitialValue="0" ForeColor="Red" ControlToValidate="mstatus" ErrorMessage="*select Merital status" Text="" ID="RequiredFieldValidator10"></asp:RequiredFieldValidator>
                          
                            <div class="col-md-6 ">
                                <asp:RequiredFieldValidator runat="server" InitialValue="0" ForeColor="Red" ControlToValidate="State" ErrorMessage="*select state" Text="" ID="RequiredFieldValidator6"></asp:RequiredFieldValidator>
                            </div>
                        </div>


                       

                        <div class="row col-md-12 ">
                            <div class=" col-md-6 " data-validate="Username is reauired">
                              <%--  <asp:RequiredFieldValidator runat="server" ForeColor="Red" InitialValue="0" ControlToValidate="gender" ErrorMessage="*Select gender" Text="" ID="RequiredFieldValidator9"></asp:RequiredFieldValidator>--%>

                            </div>
                            <div class="col-md-6 ">
                             </div>
                        </div>

                          <div class="row col-md-12   ">
                            <div class="wrap-input100 col-md-6 mr-0 mt-0 validate-input m-b-0 bri" data-validate="FristName is reauired">
                                <span class="label-input100">old Password</span>
                                <asp:TextBox CssClass="input100 pad" ID="oldp" runat="server" placeholder="old Password" Text=""></asp:TextBox>
                                <span class="focus-input100"></span>
                            </div>

                            <div class="wrap-input100  col-md-6 validate-input ble" data-validate="Last Name is required">
                                <span class="label-input100">New password</span>
                                <asp:TextBox runat="server" CssClass="input100 pad" ID="newp" placeholder="New password" Text=""></asp:TextBox>
                                <span class="focus-input100"></span>
                            </div>

                        </div>
                            <br />
                        <div class="row col-md-12 ">
                            <br />
                            <div class=" col-md-6 " data-validate="Username is reauired">
                                <asp:Label runat="server" ID="errp" ForeColor="Red"></asp:Label>
                               <%-- <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="fname" ErrorMessage="*" Text="" ID="RequiredFieldValidator7"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="fname"
                                    ErrorMessage="Letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$">  
                                </asp:RegularExpressionValidator>
                 --%>           </div>
                            <div class="col-md-6 ">
                           <%--     <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="lname"
                                    ErrorMessage="Letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$">  
                                </asp:RegularExpressionValidator>

                                <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="lname" ErrorMessage="*" Text="" ID="RequiredFieldValidator8"></asp:RequiredFieldValidator>
                       --%>     </div>
                        </div>

                        <div class=" row col-md-12">
                            <div class="col-md-6">
                                <asp:LinkButton runat="server" CssClass="btn btn-primary" Text="Update" ID="upd" OnClick="upd_Click"></asp:LinkButton>
                            </div>

                            <div class="col-md-6">
                                <asp:LinkButton runat="server" CssClass="btn btn-danger" Text="Cancle" ID="can" OnClick="can_Click"></asp:LinkButton>

                            </div>
                        </div>


                        <%--  <div class="row col-md-12 ">
                                            <div class=" col-md-6 " data-validate="Username is reauired">
                                                <asp:RequiredFieldValidator runat="server" ForeColor="Red" InitialValue="0" ControlToValidate="edq" ErrorMessage="*Select Education qualification" Text="" ID="RequiredFieldValidator11"></asp:RequiredFieldValidator>

                                            </div>
                                            <div class="col-md-6 ">
                                                <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="resume" ErrorMessage="*select Resume PDF" Text="" ID="RequiredFieldValidator12"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>--%>




                        <div class="text-right p-t-8 p-b-31">
                            <a href="#">Forgot password?
                            </a>
                        </div>


                        <div class="container-login100-form-btn">
                            <%--           <div class="wrap-login100-form-btn">
                                <div class="login100-form-bgbtn">
                                </div>
                                <div class="col-md-6">
                                <button runat="server" class="login100-form-btn">
                                    <asp:Button runat="server" BackColor="Transparent" Text="SIGIN IN" ForeColor="White" Width="408px" />
                                </button>
                                    </div>

                                 <div class="col-md-6">
                                <button runat="server" class="login100-form-btn">
                                    <asp:Button runat="server" BackColor="Transparent" Text="SIGIN IN" ForeColor="White" Width="408px" />
                                </button>
                                    </div>
                            </div>
                            --%>
                        </div>


                    </div>


                </div>
            </div>
        </div>


    </form>
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

</asp:Content>
