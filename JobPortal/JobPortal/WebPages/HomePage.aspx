<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Navbar.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="JobPortal.WebPages.HomePage" %>

<asp:Content runat="server" ContentPlaceHolderID="region">
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript">
       
        $(document).ready(function () {
            alert("me");

            clickme();
         
        });
        $('#<%=log.ClientID%>').on('blur', function () {
            alert("Blured");
        });

        function fnCall() {
            alert("Me");
        }
        function clickme() {
            var tuname = $('#<%= txtUname.ClientID%>').val().trim();
            var pass = $('#<%= txtPass.ClientID%>').val().trim();
           
            if (tuname.length <= 0) {
                $('#<%=log.ClientID%>').prop('disabled', true);
            }
            else {
                $('#<%= log.ClientID%>').prop('disabled', false);
            }
            if (pass.length <= 0) {
                $('#<%=log.ClientID%>').prop('disabled', true);
             }
             else {
                 $('#<%= log.ClientID%>').prop('disabled', false);
             }
        }

    </script>--%>
   
    <div class="hero-wrap js-fullheight">
        <div class="overlay"></div>
        <div class="container-fluid px-0">
            <div class="row d-md-flex no-gutters slider-text align-items-end js-fullheight justify-content-end">
                <img class="one-third align-self-end order-md-last img-fluid" src="../Assets/images/undraw_work_time_lhoj.svg" alt="">
                <div class="one-forth d-flex align-items-center ftco-animate js-fullheight">
                    <div class="text mt-5">
                        <p class="mb-4 mt-5 pt-5">We have <span class="number" data-number="200000">0</span> great job offers you deserve!</p>
                        <h1 class="mb-5">Largets Job Site In The World</h1>

                        <div class="ftco-search">
                            <div class="row">
                                <div class="col-md-12 nav-link-wrap">
                                    <div class="nav nav-pills text-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                        <a class="nav-link active mr-md-1" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">Find a Job</a>

                                        <a class="nav-link" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">Find a Candidate</a>

                                    </div>
                                </div>
                                <div class="col-md-12 tab-wrap">

                                    <div class="tab-content p-4" id="v-pills-tabContent">

                                        <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-nextgen-tab">
                                            <form action="#" class="search-job">
                                                <div class="row no-gutters">
                                                    <div class="col-md mr-md-2">
                                                        <div class="form-group">
                                                            <div class="form-field">
                                                                <div class="icon"><span class="icon-briefcase"></span></div>
                                                                <input type="text" class="form-control" placeholder="eg. Garphic. Web Developer">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md mr-md-2">
                                                        <div class="form-group">
                                                            <div class="form-field">
                                                                <div class="select-wrap">
                                                                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                                                    <select name="" id="" class="form-control">
                                                                        <option value="">Category</option>
                                                                        <option value="">Full Time</option>
                                                                        <option value="">Part Time</option>
                                                                        <option value="">Freelance</option>
                                                                        <option value="">Internship</option>
                                                                        <option value="">Temporary</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md mr-md-2">
                                                        <div class="form-group">
                                                            <div class="form-field">
                                                                <div class="icon"><span class="icon-map-marker"></span></div>
                                                                <input type="text" class="form-control" placeholder="Location">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md">
                                                        <div class="form-group">
                                                            <div class="form-field">
                                                                <button type="submit" class="form-control btn btn-secondary">Search</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>

                                        <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-performance-tab">
                                            <form action="#" class="search-job">
                                                <div class="row">
                                                    <div class="col-md">
                                                        <div class="form-group">
                                                            <div class="form-field">
                                                                <div class="icon"><span class="icon-user"></span></div>
                                                                <input type="text" class="form-control" placeholder="eg. Adam Scott">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md">
                                                        <div class="form-group">
                                                            <div class="form-field">
                                                                <div class="select-wrap">
                                                                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                                                    <select name="" id="" class="form-control">
                                                                        <option value="">Category</option>
                                                                        <option value="">Full Time</option>
                                                                        <option value="">Part Time</option>
                                                                        <option value="">Freelance</option>
                                                                        <option value="">Internship</option>
                                                                        <option value="">Temporary</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md">
                                                        <div class="form-group">
                                                            <div class="form-field">
                                                                <div class="icon"><span class="icon-map-marker"></span></div>
                                                                <input type="text" class="form-control" placeholder="Location">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md">
                                                        <div class="form-group">
                                                            <div class="form-field">
                                                                <button type="submit" class="form-control btn btn-secondary">Search</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="ftco-section services-section bg-primary">
        <div class="container">
            <div class="row d-flex">
                <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services d-block">
                        <div class="icon"><span class="flaticon-resume"></span></div>
                        <div class="media-body">
                            <h3 class="heading mb-3">Search Millions of Jobs</h3>
                            <p>A small river named Duden flows by their place and supplies.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services d-block">
                        <div class="icon"><span class="flaticon-collaboration"></span></div>
                        <div class="media-body">
                            <h3 class="heading mb-3">Easy To Manage Jobs</h3>
                            <p>A small river named Duden flows by their place and supplies.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services d-block">
                        <div class="icon"><span class="flaticon-promotions"></span></div>
                        <div class="media-body">
                            <h3 class="heading mb-3">Top Careers</h3>
                            <p>A small river named Duden flows by their place and supplies.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services d-block">
                        <div class="icon"><span class="flaticon-employee"></span></div>
                        <div class="media-body">
                            <h3 class="heading mb-3">Search Expert Candidates</h3>
                            <p>A small river named Duden flows by their place and supplies.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-3">
                <div class="col-md-7 heading-section text-center ftco-animate">
                    <span class="subheading">Job Categories</span>
                    <h2 class="mb-4">Top Categories</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 ftco-animate">
                    <ul class="category">
                        <li><a href="#">Web Development
                            <br>
                            <span class="number">354</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
                        <li><a href="#">Graphic Designer
                            <br>
                            <span class="number">143</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
                        <li><a href="#">Multimedia
                            <br>
                            <span class="number">100</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
                        <li><a href="#">Advertising
                            <br>
                            <span class="number">90</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
                    </ul>
                </div>
                <div class="col-md-3 ftco-animate">
                    <ul class="category">
                        <li><a href="#">Education &amp; Training
                            <br>
                            <span class="number">100</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
                        <li><a href="#">English
                            <br>
                            <span class="number">200</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
                        <li><a href="#">Social Media
                            <br>
                            <span class="number">300</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
                        <li><a href="#">Writing
                            <br>
                            <span class="number">150</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
                    </ul>
                </div>
                <div class="col-md-3 ftco-animate">
                    <ul class="category">
                        <li><a href="#">PHP Programming
                            <br>
                            <span class="number">400</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
                        <li><a href="#">Project Management
                            <br>
                            <span class="number">100</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
                        <li><a href="#">Finance Management
                            <br>
                            <span class="number">222</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
                        <li><a href="#">Office &amp; Admin
                            <br>
                            <span class="number">123</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
                    </ul>
                </div>
                <div class="col-md-3 ftco-animate">
                    <ul class="category">
                        <li><a href="#">Web Designer
                            <br>
                            <span class="number">324</span> <span>Open position</span></span><i class="ion-ios-arrow-forward"></i></a></li>
                        <li><a href="#">Customer Service
                            <br>
                            <span class="number">564</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
                        <li><a href="#">Marketing &amp; Sales
                            <br>
                            <span class="number">234</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
                        <li><a href="#">Software Development
                            <br>
                            <span class="number">425</span> <span>Open position</span><i class="ion-ios-arrow-forward"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section img" style="background-image: url(images/bg_1.jpg); background-position: top center;">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="browse-job p-5">
                        <span class="icon-search2 icon"></span>
                        <span class="subheading">Search Job</span>
                        <h2>Browse Job by Specialism</h2>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section bg-light">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 pr-lg-5">
                    <div class="row justify-content-center pb-3">
                        <div class="col-md-12 heading-section ftco-animate">
                            <span class="subheading">Recently Added Jobs</span>
                            <h2 class="mb-4">Hot Jobs</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 ftco-animate">
                            <div class="job-post-item py-4 d-block d-lg-flex align-items-center">
                                <div class="one-third mb-4 mb-md-0">
                                    <div class="job-post-item-header d-flex align-items-center">
                                        <h2 class="mr-3 text-black"><a href="#">Frontend Development</a></h2>
                                        <div class="badge-wrap">
                                            <span class="bg-primary text-white badge py-2 px-3">Partime</span>
                                        </div>
                                    </div>
                                    <div class="job-post-item-body d-block d-md-flex">
                                        <div class="mr-3"><span class="icon-layers"></span><a href="#">Facebook, Inc.</a></div>
                                        <div><span class="icon-my_location"></span><span>Western City, UK</span></div>
                                    </div>
                                </div>

                                <div class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
                                    <div>
                                        <a href="#" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
                                            <span class="icon-heart"></span>
                                        </a>
                                    </div>
                                    <a href="job-single.html" class="btn btn-primary py-2">Apply Job</a>
                                </div>
                            </div>
                        </div>
                        <!-- end -->

                        <div class="col-md-12 ftco-animate">
                            <div class="job-post-item py-4 d-block d-lg-flex align-items-center">
                                <div class="one-third mb-4 mb-md-0">
                                    <div class="job-post-item-header d-flex align-items-center">
                                        <h2 class="mr-3 text-black"><a href="#">Full Stack Developer</a></h2>
                                        <div class="badge-wrap">
                                            <span class="bg-warning text-white badge py-2 px-3">Fulltime</span>
                                        </div>
                                    </div>
                                    <div class="job-post-item-body d-block d-md-flex">
                                        <div class="mr-3"><span class="icon-layers"></span><a href="#">Google, Inc.</a></div>
                                        <div><span class="icon-my_location"></span><span>Western City, UK</span></div>
                                    </div>
                                </div>

                                <div class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
                                    <div>
                                        <a href="#" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
                                            <span class="icon-heart"></span>
                                        </a>
                                    </div>
                                    <a href="job-single.html" class="btn btn-primary py-2">Apply Job</a>
                                </div>
                            </div>
                        </div>
                        <!-- end -->

                        <div class="col-md-12 ftco-animate">
                            <div class="job-post-item py-4 d-block d-lg-flex align-items-center">
                                <div class="one-third mb-4 mb-md-0">
                                    <div class="job-post-item-header d-flex align-items-center">
                                        <h2 class="mr-3 text-black"><a href="#">Open Source Interactive Developer</a></h2>
                                        <div class="badge-wrap">
                                            <span class="bg-info text-white badge py-2 px-3">Freelance</span>
                                        </div>
                                    </div>
                                    <div class="job-post-item-body d-block d-md-flex">
                                        <div class="mr-3"><span class="icon-layers"></span><a href="#">New York Times</a></div>
                                        <div><span class="icon-my_location"></span><span>Western City, UK</span></div>
                                    </div>
                                </div>

                                <div class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
                                    <div>
                                        <a href="#" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
                                            <span class="icon-heart"></span>
                                        </a>
                                    </div>
                                    <a href="job-single.html" class="btn btn-primary py-2">Apply Job</a>
                                </div>
                            </div>
                        </div>
                        <!-- end -->

                        <div class="col-md-12 ftco-animate">
                            <div class="job-post-item py-4 d-block d-lg-flex align-items-center">
                                <div class="one-third mb-4 mb-md-0">
                                    <div class="job-post-item-header d-flex align-items-center">
                                        <h2 class="mr-3 text-black"><a href="#">Frontend Development</a></h2>
                                        <div class="badge-wrap">
                                            <span class="bg-secondary text-white badge py-2 px-3">Internship</span>
                                        </div>
                                    </div>
                                    <div class="job-post-item-body d-block d-md-flex">
                                        <div class="mr-3"><span class="icon-layers"></span><a href="#">Facebook, Inc.</a></div>
                                        <div><span class="icon-my_location"></span><span>Western City, UK</span></div>
                                    </div>
                                </div>

                                <div class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
                                    <div>
                                        <a href="#" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
                                            <span class="icon-heart"></span>
                                        </a>
                                    </div>
                                    <a href="job-single.html" class="btn btn-primary py-2">Apply Job</a>
                                </div>
                            </div>
                        </div>
                        <!-- end -->

                        <div class="col-md-12 ftco-animate">
                            <div class="job-post-item py-4 d-block d-lg-flex align-items-center">
                                <div class="one-third mb-4 mb-md-0">
                                    <div class="job-post-item-header d-flex align-items-center">
                                        <h2 class="mr-3 text-black"><a href="#">Open Source Interactive Developer</a></h2>
                                        <div class="badge-wrap">
                                            <span class="bg-danger text-white badge py-2 px-3">Temporary</span>
                                        </div>
                                    </div>
                                    <div class="job-post-item-body d-block d-md-flex">
                                        <div class="mr-3"><span class="icon-layers"></span><a href="#">New York Times</a></div>
                                        <div><span class="icon-my_location"></span><span>Western City, UK</span></div>
                                    </div>
                                </div>

                                <div class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
                                    <div>
                                        <a href="#" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
                                            <span class="icon-heart"></span>
                                        </a>
                                    </div>
                                    <a href="job-single.html" class="btn btn-primary py-2">Apply Job</a>
                                </div>
                            </div>
                        </div>
                        <!-- end -->

                        <div class="col-md-12 ftco-animate">
                            <div class="job-post-item py-4 d-block d-lg-flex align-items-center">
                                <div class="one-third mb-4 mb-md-0">
                                    <div class="job-post-item-header d-flex align-items-center">
                                        <h2 class="mr-3 text-black"><a href="#">Full Stack Developer</a></h2>
                                        <div class="badge-wrap">
                                            <span class="bg-warning text-white badge py-2 px-3">Fulltime</span>
                                        </div>
                                    </div>
                                    <div class="job-post-item-body d-block d-md-flex">
                                        <div class="mr-3"><span class="icon-layers"></span><a href="#">Google, Inc.</a></div>
                                        <div><span class="icon-my_location"></span><span>Western City, UK</span></div>
                                    </div>
                                </div>

                                <div class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
                                    <div>
                                        <a href="#" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
                                            <span class="icon-heart"></span>
                                        </a>
                                    </div>
                                    <a href="job-single.html" class="btn btn-primary py-2">Apply Job</a>
                                </div>
                            </div>
                        </div>
                        <!-- end -->

                        <div class="col-md-12 ftco-animate">
                            <div class="job-post-item py-4 d-block d-lg-flex align-items-center">
                                <div class="one-third mb-4 mb-md-0">
                                    <div class="job-post-item-header d-flex align-items-center">
                                        <h2 class="mr-3 text-black"><a href="#">Open Source Interactive Developer</a></h2>
                                        <div class="badge-wrap">
                                            <span class="bg-info text-white badge py-2 px-3">Freelance</span>
                                        </div>
                                    </div>
                                    <div class="job-post-item-body d-block d-md-flex">
                                        <div class="mr-3"><span class="icon-layers"></span><a href="#">New York Times</a></div>
                                        <div><span class="icon-my_location"></span><span>Western City, UK</span></div>
                                    </div>
                                </div>

                                <div class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
                                    <div>
                                        <a href="#" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
                                            <span class="icon-heart"></span>
                                        </a>
                                    </div>
                                    <a href="job-single.html" class="btn btn-primary py-2">Apply Job</a>
                                </div>
                            </div>
                        </div>
                        <!-- end -->

                        <div class="col-md-12 ftco-animate">
                            <div class="job-post-item py-4 d-block d-lg-flex align-items-center">
                                <div class="one-third mb-4 mb-md-0">
                                    <div class="job-post-item-header d-flex align-items-center">
                                        <h2 class="mr-3 text-black"><a href="#">Frontend Development</a></h2>
                                        <div class="badge-wrap">
                                            <span class="bg-secondary text-white badge py-2 px-3">Internship</span>
                                        </div>
                                    </div>
                                    <div class="job-post-item-body d-block d-md-flex">
                                        <div class="mr-3"><span class="icon-layers"></span><a href="#">Facebook, Inc.</a></div>
                                        <div><span class="icon-my_location"></span><span>Western City, UK</span></div>
                                    </div>
                                </div>

                                <div class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
                                    <div>
                                        <a href="#" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
                                            <span class="icon-heart"></span>
                                        </a>
                                    </div>
                                    <a href="job-single.html" class="btn btn-primary py-2">Apply Job</a>
                                </div>
                            </div>
                        </div>
                        <!-- end -->

                        <div class="col-md-12 ftco-animate">
                            <div class="job-post-item py-4 d-block d-lg-flex align-items-center">
                                <div class="one-third mb-4 mb-md-0">
                                    <div class="job-post-item-header d-flex align-items-center">
                                        <h2 class="mr-3 text-black"><a href="#">Open Source Interactive Developer</a></h2>
                                        <div class="badge-wrap">
                                            <span class="bg-danger text-white badge py-2 px-3">Temporary</span>
                                        </div>
                                    </div>
                                    <div class="job-post-item-body d-block d-md-flex">
                                        <div class="mr-3"><span class="icon-layers"></span><a href="#">New York Times</a></div>
                                        <div><span class="icon-my_location"></span><span>Western City, UK</span></div>
                                    </div>
                                </div>

                                <div class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
                                    <div>
                                        <a href="#" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
                                            <span class="icon-heart"></span>
                                        </a>
                                    </div>
                                    <a href="job-single.html" class="btn btn-primary py-2">Apply Job</a>
                                </div>
                            </div>
                        </div>
                        <!-- end -->
                    </div>
                </div>
                <div class="col-lg-3 sidebar">
                    <div class="row justify-content-center pb-3">
                        <div class="col-md-12 heading-section ftco-animate">
                            <span class="subheading">Recruitment agencies</span>
                            <h2 class="mb-4">Top Recruitments</h2>
                        </div>
                    </div>
                    <div class="sidebar-box ftco-animate">
                        <div class="border">
                            <a href="#" class="company-wrap">
                                <img src="../Assets/images/company-1.jpg" class="img-fluid" alt="Colorlib Free Template"></a>
                            <div class="text p-3">
                                <h3><a href="#">Google Company</a></h3>
                                <p><span class="number">500</span> <span>Open position</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="sidebar-box ftco-animate">
                        <div class="border">
                            <a href="#" class="company-wrap">
                                <img src="../Assets/images/company-2.jpg" class="img-fluid" alt="Colorlib Free Template"></a>
                            <div class="text p-3">
                                <h3><a href="#">Facebook Company</a></h3>
                                <p><span class="number">700</span> <span>Open position</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="sidebar-box ftco-animate">
                        <div class="border">
                            <a href="#" class="company-wrap">
                                <img src="../Assets/images/company-3.jpg" class="img-fluid" alt="Colorlib Free Template"></a>
                            <div class="text p-3">
                                <h3><a href="#">IT Programming INC</a></h3>
                                <p><span class="number">700</span> <span>Open position</span></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(images/bg_1.jpg);" data-stellar-background-ratio="0.5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                            <div class="block-18 text-center">
                                <div class="text">
                                    <div class="icon">
                                        <span class="flaticon-employee"></span>
                                    </div>
                                    <strong class="number" data-number="435000">0</strong>
                                    <span>Jobs</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                            <div class="block-18 text-center">
                                <div class="text">
                                    <div class="icon">
                                        <span class="flaticon-collaboration"></span>
                                    </div>
                                    <strong class="number" data-number="40000">0</strong>
                                    <span>Members</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                            <div class="block-18 text-center">
                                <div class="text">
                                    <div class="icon">
                                        <span class="flaticon-resume"></span>
                                    </div>
                                    <strong class="number" data-number="30000">0</strong>
                                    <span>Resume</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                            <div class="block-18 text-center">
                                <div class="text">
                                    <div class="icon">
                                        <span class="flaticon-promotions"></span>
                                    </div>
                                    <strong class="number" data-number="10500">0</strong>
                                    <span>Company</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section testimony-section">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-3">
                <div class="col-md-7 text-center heading-section ftco-animate">
                    <span class="subheading">Testimonial</span>
                    <h2 class="mb-4">Happy Clients</h2>
                </div>
            </div>
            <div class="row ftco-animate">
                <div class="col-md-12">
                    <div class="carousel-testimony owl-carousel ftco-owl">
                        <div class="item">
                            <div class="testimony-wrap py-4 pb-5">
                                <div class="user-img mb-4" style="background-image: url(images/person_1.jpg)">
                                    <span class="quote d-flex align-items-center justify-content-center">
                                        <i class="icon-quote-left"></i>
                                    </span>
                                </div>
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <p class="name">Roger Scott</p>
                                    <span class="position">Marketing Manager</span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4 pb-5">
                                <div class="user-img mb-4" style="background-image: url(images/person_2.jpg)">
                                    <span class="quote d-flex align-items-center justify-content-center">
                                        <i class="icon-quote-left"></i>
                                    </span>
                                </div>
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <p class="name">Roger Scott</p>
                                    <span class="position">Interface Designer</span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4 pb-5">
                                <div class="user-img mb-4" style="background-image: url(images/person_3.jpg)">
                                    <span class="quote d-flex align-items-center justify-content-center">
                                        <i class="icon-quote-left"></i>
                                    </span>
                                </div>
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <p class="name">Roger Scott</p>
                                    <span class="position">UI Designer</span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4 pb-5">
                                <div class="user-img mb-4" style="background-image: url(images/person_1.jpg)">
                                    <span class="quote d-flex align-items-center justify-content-center">
                                        <i class="icon-quote-left"></i>
                                    </span>
                                </div>
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <p class="name">Roger Scott</p>
                                    <span class="position">Web Developer</span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap py-4 pb-5">
                                <div class="user-img mb-4" style="background-image: url(images/person_1.jpg)">
                                    <span class="quote d-flex align-items-center justify-content-center">
                                        <i class="icon-quote-left"></i>
                                    </span>
                                </div>
                                <div class="text">
                                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    <p class="name">Roger Scott</p>
                                    <span class="position">System Analyst</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section ftco-candidates bg-primary">
        <div class="container">
            <div class="row justify-content-center pb-3">
                <div class="col-md-10 heading-section heading-section-white text-center ftco-animate">
                    <span class="subheading">Candidates</span>
                    <h2 class="mb-4">Latest Candidates</h2>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-12 ftco-animate">
                    <div class="carousel-candidates owl-carousel">
                        <div class="item">
                            <a href="#" class="team text-center">
                                <div class="img" style="background-image: url(../Assets/images/person_1.jpg);"></div>
                                <h2>Danica Lewis</h2>
                                <span class="position">Western City, UK</span>
                            </a>
                        </div>
                        <div class="item">
                            <a href="#" class="team text-center">
                                <div class="img" style="background-image: url(../Assets/images/person_2.jpg);"></div>
                                <h2>Nicole Simon</h2>
                                <span class="position">Western City, UK</span>
                            </a>
                        </div>
                        <div class="item">
                            <a href="#" class="team text-center">
                                <div class="img" style="background-image: url(images/person_3.jpg);"></div>
                                <h2>Cloe Meyer</h2>
                                <span class="position">Western City, UK</span>
                            </a>
                        </div>
                        <div class="item">
                            <a href="#" class="team text-center">
                                <div class="img" style="background-image: url(images/person_4.jpg);"></div>
                                <h2>Rachel Clinton</h2>
                                <span class="position">Western City, UK</span>
                            </a>
                        </div>
                        <div class="item">
                            <a href="#" class="team text-center">
                                <div class="img" style="background-image: url(images/person_5.jpg);"></div>
                                <h2>Dave Buff</h2>
                                <span class="position">Western City, UK</span>
                            </a>
                        </div>
                        <div class="item">
                            <a href="#" class="team text-center">
                                <div class="img" style="background-image: url(images/person_6.jpg);"></div>
                                <h2>Dave Buff</h2>
                                <span class="position">Western City, UK</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section bg-light">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-3">
                <div class="col-md-7 heading-section text-center ftco-animate">
                    <span class="subheading">Our Blog</span>
                    <h2><span>Recent</span> Blog</h2>
                </div>
            </div>
            <div class="row d-flex">
                <div class="col-md-3 d-flex ftco-animate">
                    <div class="blog-entry align-self-stretch">
                        <a href="blog-single.html" class="block-20" style="background-image: url('images/image_1.jpg');"></a>
                        <div class="text mt-3">
                            <div class="meta mb-2">
                                <div><a href="#">May 3, 2019</a></div>
                                <div><a href="#">Admin</a></div>
                                <div><a href="#" class="meta-chat"><span class="icon-chat"></span>3</a></div>
                            </div>
                            <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex ftco-animate">
                    <div class="blog-entry align-self-stretch">
                        <a href="blog-single.html" class="block-20" style="background-image: url('images/image_2.jpg');"></a>
                        <div class="text mt-3">
                            <div class="meta mb-2">
                                <div><a href="#">May 3, 2019</a></div>
                                <div><a href="#">Admin</a></div>
                                <div><a href="#" class="meta-chat"><span class="icon-chat"></span>3</a></div>
                            </div>
                            <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex ftco-animate">
                    <div class="blog-entry align-self-stretch">
                        <a href="blog-single.html" class="block-20" style="background-image: url('images/image_3.jpg');"></a>
                        <div class="text mt-3">
                            <div class="meta mb-2">
                                <div><a href="#">May 3, 2019</a></div>
                                <div><a href="#">Admin</a></div>
                                <div><a href="#" class="meta-chat"><span class="icon-chat"></span>3</a></div>
                            </div>
                            <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex ftco-animate">
                    <div class="blog-entry align-self-stretch">
                        <a href="blog-single.html" class="block-20" style="background-image: url('images/image_4.jpg');"></a>
                        <div class="text mt-3">
                            <div class="meta mb-2">
                                <div><a href="#">May 3, 2019</a></div>
                                <div><a href="#">Admin</a></div>
                                <div><a href="#" class="meta-chat"><span class="icon-chat"></span>3</a></div>
                            </div>
                            <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    x
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

    <form id="f1" runat="server">
        <div id="regisModal" class="modal fade">
            <div class="modal-dialog modal-lg">

                <!-- Modal content-->
                <div class="modal-content" role="dialog" style="border-radius: 30px">
                    <div class="modal-header" style="border-bottom-color: white;">
                        <h4 class="modal-title" style="padding-left: 37%"><b>Register User </b></h4>

                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body" style="padding: 23px">
                        <div class="row form-group">
                            <div class="col-md-6 mb-3 mb-md-0">
                                <asp:TextBox runat="server" ID="txtFname" class="form-control" placeholder="Frist Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rtxtFname" ValidationGroup="rgn" runat="server" ControlToValidate="txtFname" Font-Bold="true" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>

                            </div>
                            <div class="col-md-6 mb-3 mb-md-0">
                                <asp:TextBox runat="server" ID="txtLname" class="form-control" placeholder="Last Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rtxtLname" ValidationGroup="rgn" runat="server" ControlToValidate="txtLname" Font-Bold="true" ForeColor="Red" ErrorMessage="* "></asp:RequiredFieldValidator>

                            </div>
                        </div>

                        <div class="row form-group">
                            <div class="col-md-6 mb-3 mb-md-0">
                                <asp:TextBox runat="server" ID="txtAddress" class="form-control" placeholder="Address"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rtxtAddress" ValidationGroup="rgn" runat="server" ControlToValidate="txtAddress" Font-Bold="true" ForeColor="Red" ErrorMessage="* "></asp:RequiredFieldValidator>

                            </div>

                            <div class="col-md-6 mb-3 mb-md-0">
                                <asp:TextBox runat="server" ID="txtpin" class="form-control" placeholder="PinCode"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rtxtpin" ValidationGroup="rgn" runat="server" ControlToValidate="txtpin" Font-Bold="true" ForeColor="Red" ErrorMessage="* "></asp:RequiredFieldValidator>


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
                                <asp:RequiredFieldValidator ID="rcmbgen" ValidationGroup="rgn" runat="server" ControlToValidate="cmbgen" Font-Bold="true" ForeColor="Red" ErrorMessage="* "></asp:RequiredFieldValidator>

                            </div>

                            <div class="col-md-6 mb-3 mb-md-0">
                                <div class="form-group">
                                    <select class="form-control" runat="server" id="cmbm_satus">
                                        <option value="0">Merital Status</option>
                                        <option value="2">Married</option>
                                        <option value="1">Single</option>
                                    </select>
                                    <asp:RequiredFieldValidator ID="rcmbm_satus" ValidationGroup="rgn" runat="server" ControlToValidate="cmbm_satus" Font-Bold="true" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>

                                </div>
                            </div>
                        </div>

                        <div class="row form-group">
                            <div class="col-md-6 mb-3 mb-md-0">
                                <asp:TextBox runat="server" ID="txtmobile" class="form-control" placeholder="Mobile Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rtxtmobile" ValidationGroup="rgn" runat="server" ControlToValidate="txtmobile" Font-Bold="true" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>

                            </div>

                            <div class="col-md-6 mb-3 mb-md-0">
                                <select class="form-control" runat="server" id="cmbstate">
                                    <option value="0">City</option>
                                    <option value="surat">Surat</option>
                                    <option value="bharuch">Bharuch</option>
                                </select>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="rgn" runat="server" ControlToValidate="cmbstate" Font-Bold="true" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>

                            </div>
                        </div>


                        <div class="row form-group">
                            <div class="col-md-6 mb-3 mb-md-0">
                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="txtem" class="form-control" placeholder="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="rgn" runat="server" ControlToValidate="txtem" Font-Bold="true" ForeColor="Red" ErrorMessage="*Email Required"></asp:RequiredFieldValidator>


                                </div>
                            </div>
                            <div class="col-md-6 mb-3 mb-md-0">
                                <asp:TextBox runat="server" ID="txtPassw" class="form-control" placeholder="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="rgn" runat="server" ControlToValidate="txtPassw" Font-Bold="true" ForeColor="Red" ErrorMessage="*Passwod Required"></asp:RequiredFieldValidator>


                            </div>


                        </div>
                        <center>      <asp:Button id="rr" runat="server"  ValidationGroup="rgn" class="btn btn-danger btn-lg"  BackColor="#ff6347"  BorderColor="#ff6347" Text="Register"  OnClick="useRegistration"/>
                           
                       
                        </center>
                    </div>
                </div>
            </div>
        </div>
   

        <div id="myModal" class="modal fade">
            <div class="modal-dialog modal-md">

                <!-- Modal content-->
                <div class="modal-content" role="dialog" style="border-bottom-right-radius: 30%; border-top-left-radius: 30%;">
                    <div class="modal-header" style="border-bottom-color: white;">
                        <h4 class="modal-title" style="padding-left: 37%"><b>User Login</b></h4>

                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body" style="padding: 23px">
                        <div class="row form-group">
                            <div class="col-md-12 mb-3 mb-md-0">

                                <label class="font-weight-bold" for="fullname">User Name</label>
                                <asp:TextBox runat="server" ID="txtUname" class="form-control" placeholder="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reg1" runat="server" EnableClientScript="true" ControlToValidate="txtUname" Font-Bold="true" ForeColor="Red" ErrorMessage="*Email Required">
                                </asp:RequiredFieldValidator>

                                <asp:RegularExpressionValidator ValidationGroup="lgn" ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUname"
                                    ErrorMessage="**Please enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">  
                                </asp:RegularExpressionValidator>
                            </div>
                        </div>



                        <div class="row form-group">
                            <div class="col-md-12 mb-3 mb-md-0">
                                <label class="font-weight-bold" for="fullname">Password</label>
                                <asp:TextBox runat="server" ID="txtPass" class="form-control" TextMode="Password" placeholder="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="valpass" ValidationGroup="lgn" runat="server" ControlToValidate="txtPass" Font-Bold="true" ForeColor="Red" ErrorMessage="*Passwod Required"></asp:RequiredFieldValidator>

                                <!-- <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPass"
                                    ErrorMessage="**Please enter valid Password" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,15}$">  
                                </asp:RegularExpressionValidator>-->

                            </div>
                        </div>
                        <div style="padding-left: 160px">
                            <asp:Button runat="server" ID="log" ValidationGroup="lgn" class="btn btn-primary btn-lg" Text="Login" OnClick="userLogin" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
   <!-- Modal -->
  </form>

</asp:Content>

