<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Student.Master" AutoEventWireup="true" CodeBehind="SearchJobs.aspx.cs" Inherits="JobPortal.WebPages.SearchJobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="region" runat="server">


    <div class="hero-wrap hero-wrap-2" style="background-image: url('../Assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-end justify-content-start">
                <div class="col-md-8 ftco-animate text-center text-md-left mb-5">
                    <p class="breadcrumbs mb-0"><span class="mr-3"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span><span>Job Posts</span></p>
                    <h1 class="mb-3 bread">Apply Jobs</h1>
                </div>
            </div>
        </div>
    </div>


    <section class="ftco-section bg-light">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="row justify-content-center pb-3">
                        <div class="col-md-12 heading-section ftco-animate">
                            <span class="subheading">Recently Added Jobs</span>
                            <h2 class="mb-4">Hot Jobs</h2>
                        </div>
                    </div>
                    <form runat="server">

                        <div class="row">

                            <asp:GridView BorderColor="Transparent" BorderWidth="0" HorizontalAlign="Center" Width="97%" runat="server" ID="grv" AutoGenerateColumns="false" BorderStyle="None" OnRowCommand="grv_RowCommand">
                                <Columns>

                                    <asp:TemplateField ItemStyle-Width="3000px" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <div class="col-md-12 ftco-animate">
                                                <div class="job-post-item py-4 d-block d-lg-flex align-items-center">
                                                    <div class="one-third mb-4 mb-md-0">
                                                        <div class="job-post-item-header d-flex align-items-center">
                                                            <h2 class="mr-3 text-black">
                                                                <asp:Label runat="server" ID="tit" Text='<%# Bind("title") %>'></asp:Label></h2>
                                                            <div class="badge-wrap">
                                                                <span class="bg-warning  text-white badge py-2 px-3">
                                                                    <asp:Label runat="server" ID="jt" Text='<%# Bind("Job_type") %>'></asp:Label></span>
                                                            </div>
                                                        </div>
                                                        <div class="job-post-item-body d-block d-md-flex">
                                                            <div class="mr-3">
                                                                <span class="icon-layers"></span>
                                                                <asp:Label ForeColor="Blue" runat="server" ID="l" Text='<%# Bind("Company") %>'></asp:Label>
                                                            </div>
                                                            <div class="mr-3">
                                                                <span class="icon-my_location"></span>
                                                                <asp:Label runat="server" ID="location" Text='<%# Bind("Location") %>'></asp:Label>
                                                            </div>
                                                            <div>
                                                                <span class="icon-account_balance_wallet"></span>
                                                                <asp:Label runat="server" ID="Label1" Text='<%# Bind("Expected_salary") %>'></asp:Label>
                                                            </div>

                                                        </div>
                                                    </div>

                                                    <div class="one-forth ml-auto d-flex align-items-center">
                                                        <div>
                                                            <a href="#" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
                                                                <span class="icon-heart"></span>
                                                            </a>
                                                        </div>
                                                        <asp:Button runat="server" CommandArgument='<%# Bind("JobId") %>' CommandName="Select" ID="btn" class="btn btn-primary py-2" Text="Apply Job"></asp:Button>
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </form>
                    <!-- end -->
                </div>
            </div>
        </div>
    </section>
</asp:Content>
