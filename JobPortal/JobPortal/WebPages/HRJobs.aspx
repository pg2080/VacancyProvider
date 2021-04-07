<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/HR.Master" ValidateRequest="false" EnableEventValidation="false" ViewStateEncryptionMode="Never" AutoEventWireup="true" CodeBehind="HRJobs.aspx.cs" Inherits="JobPortal.WebPages.HRJobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="region" runat="server">
    <div class="hero-wrap hero-wrap-2" style="background-image: url('../Assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-end justify-content-start">
                <div class="col-md-8 ftco-animate text-center text-md-left mb-5">
                    <p class="breadcrumbs mb-0"><span class="mr-3"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span><span>Job Posts</span></p>
                    <h1 class="mb-3 bread">Jobs</h1>
                </div>
            </div>
        </div>
    </div>
    <script>

    </script>
    <form runat="server" style="padding: 30px">


        <asp:GridView ID="GridView1" runat="server" CellPadding="4" AutoGenerateColumns="False" ForeColor="#333333" GridLines="None" AllowSorting="True" HorizontalAlign="Center" OnRowEditing="GridView1_RowEditing"   OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowCommand="GridView1_RowCommand">
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />

            <Columns>
                <asp:CommandField ShowEditButton="true" ButtonType="Link" />

                <asp:TemplateField HeaderText="Action" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="5%">
                    <ItemTemplate>

                        <%--  <button type="button" class="btn btn-danger btn-md icon icon-edit align-self-center" style="background-color: #5D7B9D" data-toggle="modal" data-target='#Me<%# Eval("JobId") %>'></button>
                        <asp:LinkButton  CommandName="edit" CommandArgument='<%#Eval("JobId") %>' runat="server" Text="SUN"></asp:LinkButton>
                        <asp:LinkButton runat="server" OnClick="Unnamed_Click" Text="SUN"></asp:LinkButton>
                        --%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Sr No" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                    <ItemStyle Width="10%"></ItemStyle>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Title " ItemStyle-Height="50px">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lbl1" Text='<%# Bind("title") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txtjtype" Text='<%#Eval("title") %>' CssClass="form-control"></asp:TextBox>
                       <asp:TextBox runat="server" ID="Jid" Text='<%#Eval("JobId") %>' Visible="false"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtjtype"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtjtype"
                            ErrorMessage="Letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z. ]*$">  
                        </asp:RegularExpressionValidator>

                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Job type ">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lbl2" Text='<%# Bind("Job_type") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:DropDownList runat="server" CssClass="form-control" ID="cmbjtype" SelectedValue='<%#Eval("Job_type") %>'>
                            <asp:ListItem Value="FullTime" Text="FullTime"></asp:ListItem>
                            <asp:ListItem Value="PartTIme" Text="PartTIme"></asp:ListItem>
                            <asp:ListItem Value="Intern" Text="Intern"></asp:ListItem>
                            <asp:ListItem Value="Home" Text="Home"></asp:ListItem>

                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" InitialValue="0" ControlToValidate="cmbjtype"></asp:RequiredFieldValidator>

                    </EditItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="Location ">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lbl3" Text='<%# Bind("Location") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox type="text" runat="server" ID="txtlocation" class="form-control" Text='<%#Eval("Location") %>' placeholder="eg .Surat"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtlocation"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtlocation"
                            ErrorMessage="Letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$">  
                        </asp:RegularExpressionValidator>

                    </EditItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="Branch Name ">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lbl4" Text='<%# Bind("Company") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%#Eval("Company") %>' CssClass="form-control" ID="txtcname"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtcname"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcname"
                            ErrorMessage="Letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$">  
                        </asp:RegularExpressionValidator>

                    </EditItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description ">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lbl5" Text='<%# Bind("Description") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txtdes" Text='<%#Eval("Description") %>' CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtdes"></asp:RequiredFieldValidator>

                    </EditItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="Required experiance ">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lbl6" Text='<%# Bind("Req_experiance") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%#Eval("Req_experiance") %>' CssClass="form-control" ID="txtexp"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtexp"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtexp"
                            ErrorMessage="Numbers only" ForeColor="Red" ValidationExpression="^[\d-]+$">  
                        </asp:RegularExpressionValidator>

                    </EditItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="Approx salary ">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lbl7" Text='<%# Bind("Expected_salary") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%#Eval("Expected_salary") %>' CssClass="form-control" ID="txtsal"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtsal"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtsal"
                            ErrorMessage="Numbers only" ForeColor="Red" ValidationExpression="^[\d-]+$">  
                        </asp:RegularExpressionValidator>

                    </EditItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="No of Vacancy ">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lbl8" Text='<%# Bind("vacancy") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%#Eval("vacancy") %>' CssClass="form-control" ID="vc"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="vc"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="vc"
                            ErrorMessage="Numbers only" ForeColor="Red" ValidationExpression="^[0-9]*$">  
                        </asp:RegularExpressionValidator>

                    </EditItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="Department ">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lbl9" Text='<%# Bind("dept") %>'></asp:Label>
                    </ItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText=" No of Application">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lbl11" Text='<%# Eval("CO").ToString().Equals("")   ? "0" :Eval("CO") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>



            </Columns>
            <%--        <Columns>
                   <asp:TemplateField>
                    <ItemTemplate>
                        <div class="container">
                            <div class="modal fade" id="Me<%# Eval("JobId") %>" role="dialog">
                                <div class="modal-dialog modal-lg">

                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title">Update Job</h4>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <asp:Label runat="server" CssClass="col-form-label">JobTitle</asp:Label>
                                                    <asp:TextBox runat="server" ID="txtjtype" Text='<%#Eval("title") %>' CssClass="form-control"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtjtype"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtjtype"
                                                        ErrorMessage="Letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z. ]*$">  
                                                    </asp:RegularExpressionValidator>

                                                </div>
                                                <div class="col-md-6">
                                                    <asp:Label runat="server" CssClass="col-form-label" >Branch name</asp:Label>
                                                    <asp:TextBox runat="server" Text='<%#Eval("Company") %>' CssClass="form-control" ID="txtcname"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtcname"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcname"
                                                        ErrorMessage="Letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$">  
                                                    </asp:RegularExpressionValidator>

                                                </div>
                                            </div>
                                       
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <asp:Label runat="server" CssClass="col-form-label" ID="Label1">Location</asp:Label>
                                                    
                                                    <asp:TextBox type="text" runat="server" ID="txtlocation" class="form-control" Text='<%#Eval("Location") %>' placeholder="eg .Surat"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtlocation"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtlocation"
                                                        ErrorMessage="Letters only" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$">  
                                                    </asp:RegularExpressionValidator>

                                                </div>
                                                <div class="col-md-6">
                                                       <asp:Label runat="server" CssClass="col-form-label" ID="Label2">Job Category</asp:Label>
                                                 
                                                    <asp:DropDownList runat="server" CssClass="form-control" ID="cmbjtype" SelectedValue='<%#Eval("Job_type") %>'>
                                                        <asp:ListItem Value="FullTime" Text="FullTime"></asp:ListItem>
                                                        <asp:ListItem Value="PartTIme" Text="PartTIme"></asp:ListItem>
                                                        <asp:ListItem Value="Intern" Text="Intern"></asp:ListItem>
                                                        <asp:ListItem Value="Home" Text="Home"></asp:ListItem>

                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" InitialValue="0" ControlToValidate="cmbjtype"></asp:RequiredFieldValidator>

                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <asp:Label runat="server" CssClass="col-form-label">Description</asp:Label>
                                                    <asp:TextBox runat="server"   ID="txtdes" Text='<%#Eval("Description") %>' CssClass="form-control"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtdes"></asp:RequiredFieldValidator>

                                                </div>
                                                <div class="col-md-6">
                                                    <asp:Label runat="server" CssClass="col-form-label">Experiance</asp:Label>
                                                    <asp:TextBox runat="server" Text='<%#Eval("Req_experiance") %>' CssClass="form-control" ID="txtexp"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtexp"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtexp"
                                                        ErrorMessage="Numbers only" ForeColor="Red" ValidationExpression="^[\d-]+$">  
                                                    </asp:RegularExpressionValidator>

                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <asp:Label runat="server" CssClass="col-form-label">Approx salary</asp:Label>
                                                    <asp:TextBox runat="server" Text='<%#Eval("Expected_salary") %>' CssClass="form-control" ID="txtsal"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="txtsal"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtsal"
                                                        ErrorMessage="Numbers only" ForeColor="Red" ValidationExpression="^[\d-]+$">  
                                                    </asp:RegularExpressionValidator>
                                                </div>
                                                <div class="col-md-6">
                                                    <asp:Label runat="server" CssClass="col-form-label">vacancy</asp:Label>
                                                    <asp:TextBox runat="server" Text='<%#Eval("vacancy") %>' CssClass="form-control" ID="vc"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="vc"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="vc"
                                                        ErrorMessage="Numbers only" ForeColor="Red" ValidationExpression="^[0-9]*$">  
                                                    </asp:RegularExpressionValidator>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="modal-footer">
                                       
                                               </div>
                                    </div>

                                </div>
                                <//div>

                            </div>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
            --%>
        </asp:GridView>

    </form>
</asp:Content>
