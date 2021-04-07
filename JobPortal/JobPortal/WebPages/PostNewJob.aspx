<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/HR.Master" AutoEventWireup="true" CodeBehind="PostNewJob.aspx.cs" Inherits="JobPortal.WebPages.PostNewJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="region" runat="server">


    <div class="hero-wrap hero-wrap-2" style="background-image: url('../Assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-end justify-content-start">
                <div class="col-md-8 ftco-animate text-center text-md-left mb-5">
                    <p class="breadcrumbs mb-0"><span class="mr-3"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span><span>New Job Post</span></p>
                    <h1 class="mb-3 bread">Post A Job</h1>
                </div>
            </div>
        </div>
    </div>
    <div class="ftco-section bg-light">
        <div class="container">
            <div class="row">

                <div class="col-md-12 col-lg-8 mb-5">

                    <form action="#" runat="server" class="p-5 bg-white">

                        <div class="row form-group">
                            <div class="col-md-12 mb-3 mb-md-0">
                                <label style="color:red">* Indicates that fields are mendatory</label><br>
                                <label class="font-weight-bold" for="fullname">Job Title</label>
                                <asp:TextBox type="text" runat="server" ID="txtjtype" class="form-control" placeholder="eg. Professional UI/UX Designer"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtjtype"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtjtype"
                                    ErrorMessage="Letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z .]*$">  
                                </asp:RegularExpressionValidator>

                            </div>
                        </div>

                        <div class="row form-group mb-3">
                            <div class="col-md-12 mb-3 mb-md-0">
                                <label class="font-weight-bold" for="fullname">Company Branch Name</label>
                                <asp:TextBox type="text" runat="server" ID="txtcname" class="form-control" placeholder="Company Name."></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtcname"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcname"
                                    ErrorMessage="Letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$">  
                                </asp:RegularExpressionValidator>

                            </div>
                        </div>


                        <div class="row form-group">
                            <div class="col-md-12 mb-3 mb-md-0">
                                <label class="font-weight-bold" for="fullname">Job Type</label>

                                <asp:DropDownList runat="server" name="" ID="cmbjtype" class="form-control">
                                    <asp:ListItem Value="0">Category</asp:ListItem>
                                    <asp:ListItem Value="FullTime">Full Time</asp:ListItem>
                                    <asp:ListItem Value="PartTime">Part Time</asp:ListItem>
                                    <asp:ListItem Value="Internship">Internship</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" InitialValue="0" ControlToValidate="cmbjtype"></asp:RequiredFieldValidator>

                            </div>
                        </div>

                        <div class="row form-group mb-4">
                            <div class="col-md-12">
                                <label>Location</label>
                            </div>
                            <div class="col-md-12 mb-3 mb-md-0">
                                <asp:TextBox type="text" runat="server" ID="txtlocation" class="form-control" placeholder="eg .Surat"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtlocation"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtlocation"
                                    ErrorMessage="Letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$">  
                                </asp:RegularExpressionValidator>

                            </div>
                        </div>
                        <div class="row form-group mb-4">
                            <div class="col-md-12">
                                <label>Experiance</label>
                            </div>
                            <div class="col-md-12 mb-3 mb-md-0">
                                <asp:TextBox type="text" runat="server" ID="txtexp" class="form-control" placeholder="Experiance in year"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtexp"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtexp"
                                    ErrorMessage="Numbers only" ForeColor="Red" ValidationExpression="^[\d-]+$">  
                                </asp:RegularExpressionValidator>

                            </div>
                        </div>
                        <div class="row form-group mb-4">
                            <div class="col-md-12">
                                <label>Approx Salary</label>
                            </div>
                            <div class="col-md-12 mb-3 mb-md-0">
                                <asp:TextBox type="text" runat="server" ID="txtsal" class="form-control" placeholder="Salary Approx"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtsal"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtsal"
                                    ErrorMessage="Numbers only" ForeColor="Red" ValidationExpression="^[0-9-]*$">  
                                </asp:RegularExpressionValidator>

                            </div>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-12">
                                <label>No of Vacancy</label>
                            </div>
                            <div class="col-md-12 mb-3 mb-md-0">
                                <asp:TextBox ID="vc" TextMode="Number" class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="vc"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="vc"
                                    ErrorMessage="Numbers only" ForeColor="Red" ValidationExpression="^[0-9]*$">  
                                </asp:RegularExpressionValidator>

                            </div>
                        </div>

                        <div class="row form-group">
                            <div class="col-md-12">
                                <label>Job Description</label>
                            </div>
                            <div class="col-md-12 mb-3 mb-md-0">
                                <asp:TextBox ID="txtdes" TextMode="MultiLine" class="form-control" runat="server" cols="30" Rows="5"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtdes"></asp:RequiredFieldValidator>

                            </div>
                        </div>


                        <div class="row form-group">
                            <div class="col-md-12">
                                <asp:Button runat="server" value="Post" Text="Create Job" class="btn btn-primary  py-2 px-5" OnClick="createNewJob" />
                            </div>
                        </div>


                    </form>
                </div>

                <div class="col-lg-4">
                    <div class="p-4 mb-3 bg-white">
                        <h3 class="h5 text-black mb-3">Contact Info</h3>
                        <p class="mb-0 font-weight-bold">Address</p>
                        <p class="mb-4">20 Sai Darshan Bunglows, Surat, Gujarat, India</p>

                        <p class="mb-0 font-weight-bold">Phone</p>
                        <p class="mb-4"><a href="#">+91 9173882080</a></p>

                        <p class="mb-0 font-weight-bold">Email Address</p>
                        <p class="mb-0"><a href="#"><span class="__cf_email__" data-cfemail="671e081215020a060e0b2703080a060e094904080a">[email&#160;protected]</span></a></p>

                    </div>

                    <div class="p-4 mb-3 bg-white">
                        <h3 class="h5 text-black mb-3">More Info</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa ad iure porro mollitia architecto hic consequuntur. Distinctio nisi perferendis dolore, ipsa consectetur</p>
                        <p><a href="#" class="btn btn-primary  py-2 px-4">Learn More</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>


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
