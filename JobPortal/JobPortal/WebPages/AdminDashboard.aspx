   <%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Navbar.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="JobPortal.WebPages.StudentDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="region" runat="server">
 
    <form runat="server">
                <div id="AddRModal" class="modal fade">
            <div class="modal-dialog modal-lg">

                <!-- Modal content-->
                <div class="modal-content" role="dialog" style="border-radius: 30px">
                    <div class="modal-header" style="border-bottom-color: white;">
                        <h4 class="modal-title" style="padding-left: 37%"><b>RegisterNew HR</b></h4>

                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body" style="padding: 23px">
                        <div class="row form-group">
                            <div class="col-md-6 mb-3 mb-md-0">
                                <asp:TextBox runat="server" ID="txtFname" class="form-control" placeholder="Frist Name"></asp:TextBox>
                            </div>
                            <div class="col-md-6 mb-3 mb-md-0">
                                <asp:TextBox runat="server" ID="txtLname" class="form-control" placeholder="Last Name"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row form-group">
                            <div class="col-md-5 mb-3 mb-md-0">
                                <asp:TextBox runat="server" ID="txtAddress" class="form-control" placeholder="Address"></asp:TextBox>
                            </div>

                              <div class="col-md-3 mb-3 mb-md-0">
                                   <asp:TextBox runat="server" ID="txtpin" class="form-control" placeholder="PinCode"></asp:TextBox>
                           
                            </div>

                            <div class="col-md-4 mb-3 mb-md-0">
                                <select class="form-control" runat="server" id="cmbstate">
                                        <option value="0">City</option>
                                        <option value="surat">Surat</option>
                                        <option value="bharuch">Bharuch</option>
                                    </select>
                            </div>
                        </div>


                        <div class="row form-group">
                            <div class="col-md-6 mb-3 mb-md-0">
                                <div class="form-group">
                                    <select class="form-control" runat="server" id="cmbgen">
                                        <option value="0">Gender</option>
                                        <option value="m">Male</option>
                                        <option value="f">Female</option>
                                    </select>
                                </div>

                            </div>

                            <div class="col-md-6 mb-3 mb-md-0">
                                <div class="form-group">
                                    <select class="form-control" runat="server" id="cmbm_satus">
                                        <option value="0">Merital Status</option>
                                        <option value="2">Married</option>
                                        <option value="1">Single</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="row form-group">
                            <div class="col-md-6 mb-3 mb-md-0">
                                <asp:TextBox runat="server" ID="txtmobile" class="form-control" placeholder="Mobile Number"></asp:TextBox>
                            </div>

                            <div class="col-md-6 mb-3 mb-md-0">
                                <select class="form-control" runat="server" id="cmbdept">
                                    <option value="0">Select Department</option>
                                    <option value="IT">IT Department</option>
                                    <option value="Managemet">Managemet Department</option>
                                    <option value="Account">Account Department</option>
                                    <option value="Sales">Sales Department</option>
                                    <option value="Electrical">Electrical Department</option>
                                    
                                </select>
                            </div>
                        </div>


                        <div class="row form-group">
                            <div class="col-md-6 mb-3 mb-md-0">
                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="txtem" class="form-control" placeholder="Email"></asp:TextBox>

                                </div>
                            </div>
                            <div class="col-md-6 mb-3 mb-md-0">
                                <asp:TextBox runat="server" ID="txtPassw" class="form-control" placeholder="Password"></asp:TextBox>

                            </div>


                        </div>
                        <center<%--><asp:Button runat="server" class="btn btn-danger btn-lg" ID="btnHr"  BackColor="#ff6347"  BorderColor="#ff6347" Text="RegisterMe" OnClick="registerHR"  />
                          --%> <asp:Button runat="server" CssClass="btn btn-danger btn-lg" ID="btns" Text="Register HR" />
                       
                        </center>
                    </div>
                </div>
            </div>
        </div>

      <div class="hero-wrap hero-wrap-2" style="background-image: url('../Assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
          <div class="col-md-8 ftco-animate text-center text-md-left mb-5">
          	<p class="breadcrumbs mb-0"><span class="mr-3"><a href="index.html">Dashboard <i class="ion-ios-arrow-forward"></i></a></span> <span>Technology</span></p>
            <h3 class="mb-3 bread">Welcome <%= Session["email"] %>
          <asp:Label runat="server" ID="txth"></asp:Label></h3>
          </div>
        </div>
      </div>
    </div>
            </form>

    <section class="ftco-section bg-light">
      <div class="container">
        <div class="row d-flex">
          <div class="col-md-3 d-flex ftco-animate">
            <div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20" style="background-image: url('../Assets/images/image_1.jpg');">
              </a>
              <div class="text mt-3">
              	<div class="meta mb-2">
                  <div><a href="#">May 3, 2019</a></div>
                  <div><a href="#">Admin</a></div>
                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                </div>
                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
              </div>
            </div>
          </div>
          <div class="col-md-3 d-flex ftco-animate">
            <div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20" style="background-image: url('../Assets/images/image_2.jpg');">
              </a>
              <div class="text mt-3">
              	<div class="meta mb-2">
                  <div><a href="#">May 3, 2019</a></div>
                  <div><a href="#">Admin</a></div>
                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                </div>
                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
              </div>
            </div>
          </div>
          <div class="col-md-3 d-flex ftco-animate">
            <div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20" style="background-image: url('../Assets/images/image_3.jpg');">
              </a>
              <div class="text mt-3">
              	<div class="meta mb-2">
                  <div><a href="#">May 3, 2019</a></div>
                  <div><a href="#">Admin</a></div>
                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                </div>
                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
              </div>
            </div>
          </div>
          <div class="col-md-3 d-flex ftco-animate">
            <div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20" style="background-image: url('images/image_4.jpg');">
              </a>
              <div class="text mt-3">
              	<div class="meta mb-2">
                  <div><a href="#">May 3, 2019</a></div>
                  <div><a href="#">Admin</a></div>
                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                </div>
                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
              </div>
            </div>
          </div>
          <div class="col-md-3 d-flex ftco-animate">
            <div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20" style="background-image: url('../Assets/images/image_5.jpg');">
              </a>
              <div class="text mt-3">
              	<div class="meta mb-2">
                  <div><a href="#">May 3, 2019</a></div>
                  <div><a href="#">Admin</a></div>
                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                </div>
                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
              </div>
            </div>
          </div>
          <div class="col-md-3 d-flex ftco-animate">
            <div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20" style="background-image: url('../Assets/images/image_6.jpg');">
              </a>
              <div class="text mt-3">
              	<div class="meta mb-2">
                  <div><a href="#">May 3, 2019</a></div>
                  <div><a href="#">Admin</a></div>
                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                </div>
                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
              </div>
            </div>
          </div>
          <div class="col-md-3 d-flex ftco-animate">
            <div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20" style="background-image: url('../Assets/images/image_7.jpg');">
              </a>
              <div class="text mt-3">
              	<div class="meta mb-2">
                  <div><a href="#">May 3, 2019</a></div>
                  <div><a href="#">Admin</a></div>
                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                </div>
                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
              </div>
            </div>
          </div>
          <div class="col-md-3 d-flex ftco-animate">
            <div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20" style="background-image: url('../Assets/images/image_8.jpg');">
              </a>
              <div class="text mt-3">
              	<div class="meta mb-2">
                  <div><a href="#">May 3, 2019</a></div>
                  <div><a href="#">Admin</a></div>
                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                </div>
                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
              </div>
            </div>
          </div>
        </div>
        <div class="row mt-5">
          <div class="col text-center">
            <div class="block-27">
              <ul>
                <li><a href="#">&lt;</a></li>
                <li class="active"><span>1</span></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&gt;</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>
		
		<section class="ftco-section-parallax">
      <div class="parallax-img d-flex align-items-center">
        <div class="container">
          <div class="row d-flex justify-content-center">
            <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
              <h2>Subcribe to our Newsletter</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in</p>
              <div class="row d-flex justify-content-center mt-4 mb-4">
                <div class="col-md-12">
                  <form action="#" class="subscribe-form">
                    <div class="form-group d-flex">
                      <input type="text" class="form-control" placeholder="Enter email address">
                      <input type="submit" value="Subscribe" class="submit px-3">
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

  
   
</asp:Content>
