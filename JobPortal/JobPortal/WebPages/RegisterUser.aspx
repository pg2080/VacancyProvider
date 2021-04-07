<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="JobPortal.WebPages.RegisterUser" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>form-v1 by Colorlib</title>
    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <!-- Font-->
    <link rel="stylesheet" type="text/css" href="css/opensans-font.css" />
    <link rel="stylesheet" type="text/css" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css" />
    <!-- Main Style Css -->
    <link rel="stylesheet" href="css/style.css" />
    <link href="../RegisterAssets/css/opensans-font.css" rel="stylesheet" />
    <link href="../RegisterAssets/css/style.css" rel="stylesheet" />
    <link href="../RegisterAssets/fonts/material-design-iconic-font/css/material-design-iconic-font.min.css" rel="stylesheet" />

    <!-- -->

    <link rel="stylesheet" href="../Assets/css/style.css" />

</head>

<body>
    <script type="text/javascript">
        //onblur Function [starts]
        function fnfname() {
            alert("Fname");

        };
        //onblur Function [end]

    </script>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar" style="background-color: white">
        <div class="container">
            <a class="navbar-brand icon-magnet" style="font-size: 30px" href="index.html">Megnify.Me</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="oi oi-menu"></span>Menu
            </button>

            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active"><a href="HomePage.aspx" class="nav-link">Home</a></li>
                    <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
                    <li class="nav-item"><a href="candidates.html" class="nav-link">Canditates</a></li>
                    <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
                    <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
                    <li class="nav-item cta mr-md-1"><a href="Login.aspx" class="nav-link">Login</a></li>
                    <li class="nav-item cta cta-colored"><a href="" class="nav-link" data-toggle="modal" data-target="#regisModal">Registration</a></li>

                </ul>
            </div>
        </div>
    </nav>

    <script type="text/javascript">
      
    </script>

    <div class="page-content">
        <div class="form-v1-content">
            <div class="wizard-form" style="box-shadow: 0px 0px 11px 4px rgba(49,49,49,0.75); -webkit-box-shadow: 0px 0px 11px 4px rgba(49,49,49,0.75); -moz-box-shadow: 0px 0px 11px 4px rgba(49,49,49,0.75); margin-top: -37px">
                <form class="form-register" runat="server">
                    <div id="form-total">
                        <!-- SECTION 1 -->
                        <h2>
                            <p class="step-icon"><span>01</span></p>
                            <span class="step-text">Peronal Infomation</span>
                            
                        </h2>
                        <section>
                            <div class="inner">
                                <div class="wizard-header">
                                    <h3 class="heading">Peronal Infomation</h3>
                                    <p>Please enter your infomation and proceed to the next step so we can build your accounts.  </p>
                                </div>
                                <div class="form-row">
                                    <div class="form-holder">
                                        <fieldset>
                                            <input type="text" runat="server" class="form-control" onblur="javascript:fnfname()" id="fname" name="first-name" placeholder="First Name" required />
                                        </fieldset>
                                        <label style="display:none;color:red" id="erfname">Me</label>
                                    </div>
                            
                                    <div class="form-holder">
                                        <fieldset>
                                            <input type="text" runat="server" class="form-control" id="lname" name="Last-name" placeholder="First Name" required />
                                        </fieldset>
                            <label id="erlname" style="display:none;color:red">Me</label>
                            
                                    </div>
                                </div>

                                <%--<div class="form-row">
									<div class="form-holder form-holder-2">
										<fieldset>
										<%--	<legend>Your Email</legend>
											<input type="text" name="your_email" id="your_email" class="form-control" pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}" placeholder="example@email.com" required>
										</fieldset>
									</div>
								</div>--%>
                                <div class="form-row">
                                    <div class="form-holder form-holder-2">
                                        <fieldset>
                                            <%--<legend>Phone Number</legend>
                                            --%>
                                            <input type="text" runat="server" class="form-control" id="phone" name="phone" placeholder="+1 888-999-7777" required />
                                        </fieldset>
                                        
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="phone"  runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-row form-row-date">
                                    <div class="form-holder form-holder-2">
                                        <label class="special-label">Birth Date:</label>
                                        <select name="month" id="month" runat="server">
                                            <option value="MM" disabled="disabled" selected="selected">MM</option>
                                            <option value="16">16</option>
                                            <option value="17">17</option>
                                            <option value="18">18</option>
                                            <option value="19">19</option>
                                        </select>
                                        <select name="date" id="date" runat="server">
                                            <option value="DD" disabled="disabled" selected="selected">DD</option>
                                            <option value="Feb">Feb</option>
                                            <option value="Mar">Mar</option>
                                            <option value="Apr">Apr</option>
                                            <option value="May">May</option>
                                        </select>
                                        <select name="year" id="year" runat="server">
                                            <option value="YYYY" disabled="disabled" selected="selected">YYYY</option>
                                            <option value="2017">2017</option>
                                            <option value="2016">2016</option>
                                            <option value="2015">2015</option>
                                            <option value="2014">2014</option>
                                            <option value="2013">2013</option>
                                        </select>
                                    </div>
                                </div>



                                <div class="form-row">
                                    <div class="form-holder form-holder-2">
                                        <input type="text" class="form-control input-border" runat="server" id="ssn" name="ssn" placeholder="Address" required />
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-holder">
                                        <fieldset>
                                            <input type="text" runat="server" class="form-control" id="Pincode" name="first-name" placeholder="PinCode" required />
                                        </fieldset>
                                    </div>

                                    <div class="form-holder">

                                        <select runat="server" class="form-control" id="State" name="first-name" placeholder="First Name" required>
                                            <option selected="selected" disabled="disabled">Select state </option>
                                            <option>Guj</option>
                                        </select>
                                    </div>
                                </div>

                            </div>
                        </section>
                        <!-- SECTION 2 -->
                        <h2>
                            <p class="step-icon"><span>02</span></p>
                            <span class="step-text">Account Information</span>
                        </h2>
                        <section>
                            <div class="inner">
                                <div class="wizard-header">
                                    <h3 class="heading">Connect Bank Account</h3>
                                    <p>Please enter your infomation and proceed to the next step so we can build your accounts.</p>
                                </div>

                                <div class="form-row">
                                    <div class="form-holder">
                                        <select runat="server" class="form-control" id="gender" name="first-name" placeholder="First Name" required>
                                            <option selected="selected" disabled="disabled">Select Gender</option>
                                            <option>Male</option>
                                            <option>Female</option>

                                        </select>
                                    </div>

                                    <div class="form-holder">
                                        <select runat="server" class="form-control" id="mstatus" name="first-name" placeholder="First Name" required>
                                            <option selected="selected" disabled="disabled">Marital Status</option>
                                            <option>Single</option>
                                            <option>Married</option>

                                        </select>
                                    </div>
                                </div>


                                <div class="form-row">
                                    <div class="form-holder form-holder-2">
                                        <fieldset>
                                            <input type="text" runat="server" id="email" name="email" class="form-control" title="Enter Valid Email" pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}" placeholder="Email i.e example@email.com" >
                                        </fieldset>
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="email"  runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                                 
                                           </div>
                                 
                                </div>



                                <div class="form-row">
                                    <div class="form-holder form-holder-2">
                                        <fieldset>
                                            <input type="text" runat="server" id="password" class="form-control" title="Enter Strong password" pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}" placeholder="Password" required>
                                        </fieldset>
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-holder form-holder-2">
                                            <select runat="server" class="form-control" id="Select1" name="first-name" placeholder="First Name" required>
                                                <option selected="selected" disabled="disabled">Select Highest  Qualification</option>
                                                <option>S.S.C</option>
                                                <option>H.S.C</option>
                                                <option>Graduate</option>
                                                <option>Post Graduate</option>
                                                <option>P.H.D</option>
                                            </select>
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-holder form-holder-2">
                                        <fieldset>
                                            <input type="file" runat="server" id="Text2" class="form-control" title="Enter Strong password" pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}" placeholder="Password" required>
                                        </fieldset>
                                    </div>
                                </div>


                                   <div class="form-row">
                                        <%--    <input type="button" runat="server"  id="btnreg" class="form-control"/>
                                        --%>    <asp:Button runat="server"  Text="Register" CssClass="btn btn-success " />
                                   </div>

                            </div>
                        </section>

                        <!-- SECTION 3 -->
                        <%--   <h2>
			            	<p class="step-icon"><span>03</span></p>
			            	<span class="step-text">Final Step</span>
                            <hr />
			            </h2>
			            <section>
			                <div class="inner">
			                	<div class="wizard-header">
									<h3 class="heading">Set Financial Goals</h3>
									<p>Please enter your infomation and proceed to the next step so we can build your accounts.</p>
								</div>
								<div class="form-row">
			                		<div class="form-holder form-holder-2">
			                			<input type="radio" class="radio" name="radio1" id="plan-1" value="plan-1">
			                			<label class="plan-icon plan-1-label" for="plan-1">
		                					<img src="images/form-v1-icon-2.png" alt="pay-1">
			                			</label>
			                			<div class="plan-total">
		                					<span class="plan-title">Specific Plan</span>
		                					<p class="plan-text">Pellentesque nec nam aliquam sem et volutpat consequat mauris nunc congue nisi.</p>
		                				</div>
			                			<input type="radio" class="radio" name="radio1" id="plan-2" value="plan-2">
			                			<label class="plan-icon plan-2-label" for="plan-2">
			                					<img src="images/form-v1-icon-2.png" alt="pay-1">
			                			</label>
			                			<div class="plan-total">
		                					<span class="plan-title">Medium Plan</span>
		                					<p class="plan-text">Pellentesque nec nam aliquam sem et volutpat consequat mauris nunc congue nisi.</p>
		                				</div>
										<input type="radio" class="radio" name="radio1" id="plan-3" value="plan-3" checked>
										<label class="plan-icon plan-3-label" for="plan-3">
		                					<img src="images/form-v1-icon-3.png" alt="pay-2">
										</label>
										<div class="plan-total">
		                					<span class="plan-title">Special Plan</span>
		                					<p class="plan-text">Pellentesque nec nam aliquam sem et volutpat consequat mauris nunc congue nisi.</p>
		                				</div>
			                		</div>
			                	</div>
							</div>
			            </section>
                        --%>
                    </div>
                </form>
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </div>
    <script src="../RegisterAssets/js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="../RegisterAssets/js/jquery.steps.js"></script>
    <script src="js/jquery.steps.js"></script>
    <script src="../RegisterAssets/js/main.js"></script>
    <script src="js/main.js"></script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
