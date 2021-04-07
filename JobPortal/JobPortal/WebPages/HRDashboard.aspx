<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Navbar.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="HRDashboard.aspx.cs" Inherits="JobPortal.WebPages.AdminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="region" runat="server">
    <style>
        .sha {
            -webkit-box-shadow: 0px 0px 9px 0px rgba(0,0,0,0.75);
            -moz-box-shadow: 0px 0px 9px 0px rgba(0,0,0,0.75);
            box-shadow: 0px 0px 9px 0px rgba(0,0,0,0.75);
        }

        .rows {
            border: 3px #f1f1f1 solid;
        }

            .rows:hover {
                -webkit-box-shadow: 0px 0px 9px 0px rgba(0,0,0,0.75);
                -moz-box-shadow: 0px 0px 9px 0px rgba(0,0,0,0.75);
                box-shadow: 0px 0px 9px 0px rgba(0,0,0,0.75);
            }
    </style>
    <div class="hero-wrap hero-wrap-2" style="background-image: url('../Assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-end justify-content-start">
                <div class="col-md-8 ftco-animate text-center text-md-left mb-5">
                    <p class="breadcrumbs mb-0"><span class="mr-3"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span><span>Candidates</span></p>
                    <h3 class="mb-3 bread">WelCome  <%= Session["email"] %></h3>
          </div>
            </div>
        </div>
    </div>
    <form runat="server">
        <section class="ftco-section ftco-candidates ftco-candidates-2 ">

            <%--        <asp:GridView BorderColor="Transparent" CssClass="container" runat="server" ID="listCandiates" Width="56%" AutoGenerateColumns="false" OnRowCommand="listCandiates_RowCommand">
                <Columns>



                    <asp:TemplateField ItemStyle-Width="" ItemStyle-CssClass="row rows">
                        <ItemTemplate>

                            <div class="col-md-6" style="padding-top: 30px">

                                <div class="team d-md-flex" style="margin-bottom: 0px; padding-left: 0px;">
                                    <div class="img" style="background-image: url(../Assets/images/person_1.jpg);"></div>
                                    <div class="text pl-md-5">
                                        <span class="location mb-0">
                                            <asp:Label runat="server" ID="lbl" Text='<%# Eval("Location") %>'></asp:Label></span><br />

                                        <h2>
                                            <asp:Label runat="server" ID="name" Text='<%# Eval("Fname")+" "+  Eval("Lname") %>'></asp:Label>
                                            <span class="position" style="background-color: #ffffb3"><%# Eval("Hedu") %></span>
                                        </h2>
                                        <h6>Conatct :<asp:Label runat="server" ID="Label1" Text='<%# Eval("Mobile") %>'></asp:Label>
                                        </h6>
                                        <h6>Email :
                                            <asp:Label runat="server" ID="Label2" Text='<%# Eval("Email") %>'></asp:Label>

                                        </h6>
                                        <h6>Gender:  <span><%# Eval("Hedu").ToString() == "m" ? "male" :"female" %></span>

                                        </h6>
                                        <span class="location" style="color: #656565">Applied For  :
                                                    <asp:Label runat="server" ID="Label3" Text='<%# Eval("title") %>'></asp:Label>
                                        </span>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6" style="padding-top: 70px">
                                <center>
                                  
                                <div class="team d-md-flex" style="    margin-bottom: 10px;" >
                                    <p style="padding-left: 170px;">
                                    <br />
                                          <asp:Button  class="btn btn-primary" runat="server" Text="Resume"/>
                                          <asp:LinkButton CssClass="btn btn-success icon-check" ID='btnapp'  ValidationGroup='<%# Bind("ApplicationId") %>' CommandArgument='<%# Bind("ApplicationId") %>' CommandName="Approve"   runat="server"  ></asp:LinkButton>
                                          <asp:LinkButton CssClass="btn btn-danger icon-close" ID='btnrej' ValidationGroup='<%# Bind("ApplicationId") %>' CommandArgument='<%# Bind("ApplicationId") %>' CommandName="Reject"  runat="server"   ></asp:LinkButton>
                                    </p>
                                    </div>
                                    <asp:TextBox runat="server"   CssClass="form-control" width="70%" ID="rem" placeholder="Enter Remark" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="rem" id="req" runat="server" ErrorMessage="Remark Required for this Action" ValidationGroup='<%# Bind("ApplicationId") %>'></asp:RequiredFieldValidator>
                               
                               </center>

                            </div>
                            <br />
                            <br />


                        </ItemTemplate>

                    </asp:TemplateField>

                </Columns>

            </asp:GridView>
            --%>
            <br />
            <br />
            <div class="ftco-search" style="padding: 0px 10px 0px 20px;">
                <div class="row">
                    <div class="col-md-12 nav-link-wrap">
                        <div class="nav nav-pills text-center" id="v-pills-tab" role="tablist" aria-orientation="vertical" style="border-bottom: 12px gainsboro solid;">
                            <a class="nav-link active mr-md-1" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">New Application</a>

                            <a class="nav-link" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">Approved Application</a>

                            <a class="nav-link" style="padding-left: 3px" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-3" role="tab" aria-controls="v-pills-3" aria-selected="false">Cancled Application</a>

                        </div>
                    </div>
                    <div class="col-md-12 tab-wrap">

                        <div class="tab-content p-4" id="v-pills-tabContent" style="background-color: white">

                            <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-nextgen-tab">
                                <%--      	<form action="#" class="search-job">
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
                                --%>
                                <asp:GridView BorderColor="Transparent" CssClass="container" runat="server" ID="listCandiates" Width="65%" AutoGenerateColumns="false" OnRowCommand="listCandiates_RowCommand">
                                    <Columns>



                                        <asp:TemplateField ItemStyle-Width="" ItemStyle-CssClass="row rows">
                                            <ItemTemplate>

                                                <div class="col-md-6" style="padding-top: 30px">

                                                    <div class="team d-md-flex" style="margin-bottom: 0px; padding-left: 0px;">
                                                        <div class="img" style="background-image: url(../Assets/images/person_1.jpg);"></div>
                                                        <div class="text pl-md-5">
                                                            <span class="location mb-0">
                                                                <asp:Label runat="server" ID="lbl" Text='<%# Eval("Location") %>'></asp:Label></span><br />

                                                            <h2>
                                                                <asp:Label runat="server" ID="name" Text='<%# Eval("Fname")+" "+  Eval("Lname") %>'></asp:Label>
                                                                <span class="position" style="background-color: #ffffb3"><%# Eval("Hedu") %></span>
                                                            </h2>
                                                            <h6>Conatct :<asp:Label runat="server" ID="Label1" Text='<%# Eval("Mobile") %>'></asp:Label>
                                                            </h6>
                                                            <h6>Email :
                                            <asp:Label runat="server" ID="Label2" Text='<%# Eval("Email") %>'></asp:Label>

                                                            </h6>
                                                            <h6>Gender:  <span><%# Eval("Hedu").ToString() == "m" ? "male" :"female" %></span>

                                                            </h6>
                                                            <span class="location" style="color: #656565">Applied For  :
                                                    <asp:Label runat="server" ID="Label3" Text='<%# Eval("title") %>'></asp:Label>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-md-6" style="padding-top: 70px">
                                                    <center>
                                  
                                <div class="team d-md-flex" style="    margin-bottom: 10px;" >
                                    <p style="padding-left: 170px;">
                                    <br />
                                  <%--        <asp:LinkButton  class="btn btn-primary" data-toggle="modal" data-target='#Me<%# Eval("ApplicationId") %>' runat="server" Text="Resume"/>
                                  --%>      <button  type="button"  class="btn btn-primary" data-toggle="modal" data-target='#Me<%# Eval("ApplicationId") %>' >Resume</button> 
                                         <asp:LinkButton CssClass="btn btn-success icon-check" Visible='<%#Convert.ToInt32(Eval("vacancy"))>0 ? true : false %>' ID='btnapp'  ValidationGroup='<%# Bind("ApplicationId") %>' CommandArgument='<%# Bind("ApplicationId") %>' CommandName="Approve"   runat="server"  ></asp:LinkButton>
                                          <asp:LinkButton CssClass="btn btn-danger icon-close"  ID='btnrej' ValidationGroup='<%# Bind("ApplicationId") %>' CommandArgument='<%# Bind("ApplicationId") %>' CommandName="Reject"  runat="server"   ></asp:LinkButton>
                                    </p>
                                    </div>
                                    <asp:TextBox runat="server"   CssClass="form-control"  width="70%" ID="rem" placeholder="Enter Remark" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="rem" id="req" runat="server" ErrorMessage="Remark Required for this Action" ValidationGroup='<%# Bind("ApplicationId") %>'></asp:RequiredFieldValidator>
                               
                               </center>

                                                </div>
                                                <br />
                                                <br />


                                            </ItemTemplate>

                                        </asp:TemplateField>

                                    </Columns>
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>

                                                <!-- Modal -->
                                                <div class="modal fade" id="Me<%# Eval("ApplicationId") %>" role="dialog">
                                                    <div class="modal-dialog modal-lg">

                                                        <!-- Modal content-->
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                      <h4 class="modal-title">        <asp:Label runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                                                        </h4>
                                                                             <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                   
                                                           </div>
                                                            <div class="modal-body">
                                                                <embed src="../UserResume/<%# Eval("LoginId")%>.pdf" width="700px" height="900px" />
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>



                            </div>

                            <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-performance-tab">
                                <asp:GridView BorderColor="Transparent" CssClass="container" runat="server" ID="list_Approvecan" Width="65%" AutoGenerateColumns="false" OnRowCommand="list_Approvecan_RowCommand">
                                    <Columns>



                                        <asp:TemplateField ItemStyle-Width="" ItemStyle-CssClass="row rows">
                                            <ItemTemplate>

                                                <div class="col-md-6" style="padding-top: 30px">

                                                    <div class="team d-md-flex" style="margin-bottom: 0px; padding-left: 0px;">
                                                        <div class="img" style="background-image: url(../Assets/images/person_1.jpg);"></div>
                                                        <div class="text pl-md-5">
                                                            <span class="location mb-0">
                                                                <asp:Label runat="server" ID="lbl" Text='<%# Eval("Location") %>'></asp:Label></span><br />
                                                            <asp:Label runat="server" ID="Label4" Text='<%# Session["email"].ToString()%>'></asp:Label></span><br />

                                                            <h2>
                                                                <asp:Label runat="server" ID="name" Text='<%# Eval("Fname")+" "+  Eval("Lname") %>'></asp:Label>
                                                                <span class="position" style="background-color: #ffffb3"><%# Eval("Hedu") %></span>
                                                            </h2>
                                                            <h6>Conatct :<asp:Label runat="server" ID="Label1" Text='<%# Eval("Mobile") %>'></asp:Label>
                                                            </h6>
                                                            <h6>Email :
                                            <asp:Label runat="server" ID="Label2" Text='<%# Eval("Email") %>'></asp:Label>

                                                            </h6>
                                                            <h6>Gender:  <span><%# Eval("Hedu").ToString() == "m" ? "male" :"female" %></span>

                                                            </h6>
                                                            <span class="location" style="color: #656565">Applied For  :
                                                    <asp:Label runat="server" ID="Label3" Text='<%# Eval("title") %>'></asp:Label>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-md-6" style="padding-top: 70px">
                                                    <center>
                                  
                                <div class="team d-md-flex" style="    margin-bottom: 10px;" >
                                    <p style="padding-left: 170px;">
                                    <br />
                                         <button  type="button"  class="btn btn-primary" data-toggle="modal" data-target='#ap<%# Eval("ApplicationId") %>' >Resume</button> 
                                             <asp:LinkButton CssClass="btn btn-danger icon-close"   ID='btnrejr' ValidationGroup='<%# Bind("ApplicationId") %>' CommandArgument='<%# Bind("ApplicationId") %>' CommandName="AReject"  runat="server"   ></asp:LinkButton>
                                    </p>
                                    </div>
                                    <asp:TextBox runat="server"   CssClass="form-control" width="70%" ID="remr" placeholder="Enter Remark" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="remr" id="reqr" runat="server" ErrorMessage="Remark Required for this Action" ValidationGroup='<%# Bind("ApplicationId") %>'></asp:RequiredFieldValidator>
                               </center>
                                                </div>
                                                <br />
                                                <br />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                                                  <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>

                                                <!-- Modal -->
                                                <div class="modal fade" id="ap<%# Eval("ApplicationId") %>" role="dialog">
                                                    <div class="modal-dialog modal-lg">

                                                        <!-- Modal content-->
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                        <h4 class="modal-title">        <asp:Label runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                                                        </h4>
                                                   
                                                                             <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                           </div>
                                                            <div class="modal-body">
                                                                <embed src="../UserResume/<%# Eval("LoginId")%>.pdf" width="700px" height="900px" />
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </div>

                            <div class="tab-pane fade" id="v-pills-3" role="tabpanel" aria-labelledby="v-pills-performance-tab">
                                <asp:GridView BorderColor="Transparent" CssClass="container" runat="server" ID="list_rejcan" Width="65%" AutoGenerateColumns="false" OnRowCommand="list_rejcan_RowCommand">
                                    <Columns>



                                        <asp:TemplateField ItemStyle-Width="" ItemStyle-CssClass="row rows">
                                            <ItemTemplate>

                                                <div class="col-md-6" style="padding-top: 30px">

                                                    <div class="team d-md-flex" style="margin-bottom: 0px; padding-left: 0px;">
                                                        <div class="img" style="background-image: url(../Assets/images/person_1.jpg);"></div>
                                                        <div class="text pl-md-5">
                                                            <span class="location mb-0">
                                                                <asp:Label runat="server" ID="lbl" Text='<%# Eval("Location") %>'></asp:Label></span><br />

                                                            <h2>
                                                                <asp:Label runat="server" ID="name" Text='<%# Eval("Fname")+" "+  Eval("Lname") %>'></asp:Label>
                                                                <span class="position" style="background-color: #ffffb3"><%# Eval("Hedu") %></span>
                                                            </h2>
                                                            <h6>Conatct :<asp:Label runat="server" ID="Label1" Text='<%# Eval("Mobile") %>'></asp:Label>
                                                            </h6>
                                                            <h6>Email :
                                            <asp:Label runat="server" ID="Label2" Text='<%# Eval("Email") %>'></asp:Label>

                                                            </h6>
                                                            <h6>Gender:  <span><%# Eval("Hedu").ToString() == "m" ? "male" :"female" %></span>

                                                            </h6>
                                                            <span class="location" style="color: #656565">Applied For  :
                                                    <asp:Label runat="server" ID="Label3" Text='<%# Eval("title") %>'></asp:Label>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-md-6" style="padding-top: 70px">
                                                    <center>
                                  
                                <div class="team d-md-flex" style="    margin-bottom: 10px;" >
                                    <p style="padding-left: 170px;">
                                    <br />
                      <button  type="button"  class="btn btn-primary" data-toggle="modal" data-target='#rj<%# Eval("ApplicationId") %>' >Resume</button> 
                                               <asp:LinkButton Visible='<%#Convert.ToInt32(Eval("vacancy"))>0 ? true : false %>' CssClass="btn btn-success icon-check" ID='btnapp'  ValidationGroup='<%# Bind("ApplicationId") %>' CommandArgument='<%# Bind("ApplicationId") %>' CommandName="RApprove"   runat="server"  ></asp:LinkButton>
                                                     </p>
                                    </div>
                                    <asp:TextBox runat="server"  Visible='<%#Convert.ToInt32(Eval("vacancy"))>0 ? true : false %>'  CssClass="form-control" width="70%" ID="rema" placeholder="Enter Remark" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="rema" id="reqr" runat="server" ErrorMessage="Remark Required for this Action" ValidationGroup='<%# Bind("ApplicationId") %>'></asp:RequiredFieldValidator>
                               </center>
                                                </div>
                                                <br />
                                                <br />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                                                  <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>

                                                <!-- Modal -->
                                                <div class="modal fade" id="rj<%# Eval("ApplicationId") %>" role="dialog">
                                                    <div class="modal-dialog modal-lg">

                                                        <!-- Modal content-->
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                     <h4 class="modal-title">        <asp:Label runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                                                        </h4>
                                                        
                                                                   <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <embed src="../UserResume/<%# Eval("LoginId")%>.pdf" width="700px" height="900px" />
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>

        <%--<div class="col-md-6">
            <div class="team d-md-flex">
                <div class="img" style="background-image: url(../Assets/images/person_2.jpg);"></div>
                <div class="text pl-md-4">
                    <span class="location mb-0">Western City, UK</span>
                    <h2>Danica Lewis</h2>
                    <span class="position">Graduate</span>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <span class="seen">Last Activity 4 months ago</span>
                    <p><a href="#" class="btn btn-primary">Shortlist</a></p>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="team d-md-flex">
                <div class="img" style="background-image: url(../Assets/images/person_3.jpg);"></div>
                <div class="text pl-md-4">
                    <span class="location mb-0">Western City, UK</span>
                    <h2>Danica Lewis</h2>
                    <span class="position">Graduate</span>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <span class="seen">Last Activity 4 months ago</span>
                    <p><a href="#" class="btn btn-primary">Shortlist</a></p>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="team d-md-flex">
                <div class="img" style="background-image: url(../Assets/images/person_4.jpg);"></div>
                <div class="text pl-md-4">
                    <span class="location mb-0">Western City, UK</span>
                    <h2>Danica Lewis</h2>
                    <span class="position">Graduate</span>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <span class="seen">Last Activity 4 months ago</span>
                    <p><a href="#" class="btn btn-primary">Shortlist</a></p>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="team d-md-flex">
                <div class="img" style="background-image: url(../Assets/images/person_5.jpg);"></div>
                <div class="text pl-md-4">
                    <span class="location mb-0">Western City, UK</span>
                    <h2>Danica Lewis</h2>
                    <span class="position">Graduate</span>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <span class="seen">Last Activity 4 months ago</span>
                    <p><a href="#" class="btn btn-primary">Shortlist</a></p>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="team d-md-flex">
                <div class="img" style="background-image: url(../Assets/images/person_6.jpg);"></div>
                <div class="text pl-md-4">
                    <span class="location mb-0">Western City, UK</span>
                    <h2>Danica Lewis</h2>
                    <span class="position">Graduate</span>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <span class="seen">Last Activity 4 months ago</span>
                    <p><a href="#" class="btn btn-primary">Shortlist</a></p>
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


        --%>
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
    </form>

    <footer class="ftco-footer ftco-bg-dark ftco-section">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">About</h2>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
                            <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                            <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                            <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">Employers</h2>
                        <ul class="list-unstyled">
                            <li><a href="#" class="py-2 d-block">How it works</a></li>
                            <li><a href="#" class="py-2 d-block">Register</a></li>
                            <li><a href="#" class="py-2 d-block">Post a Job</a></li>
                            <li><a href="#" class="py-2 d-block">Advance Skill Search</a></li>
                            <li><a href="#" class="py-2 d-block">Recruiting Service</a></li>
                            <li><a href="#" class="py-2 d-block">Blog</a></li>
                            <li><a href="#" class="py-2 d-block">Faq</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4 ml-md-4">
                        <h2 class="ftco-heading-2">Workers</h2>
                        <ul class="list-unstyled">
                            <li><a href="#" class="py-2 d-block">How it works</a></li>
                            <li><a href="#" class="py-2 d-block">Register</a></li>
                            <li><a href="#" class="py-2 d-block">Post Your Skills</a></li>
                            <li><a href="#" class="py-2 d-block">Job Search</a></li>
                            <li><a href="#" class="py-2 d-block">Emploer Search</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">Have a Questions?</h2>
                        <div class="block-23 mb-3">
                            <ul>
                                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
                                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
                                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
    </footer>
    <script>
       function vac(val)
        {
            if(val>0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    </script>
</asp:Content>
