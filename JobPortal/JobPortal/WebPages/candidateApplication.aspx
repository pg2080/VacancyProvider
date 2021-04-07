<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Student.Master" AutoEventWireup="true" CodeBehind="candidateApplication.aspx.cs" Inherits="JobPortal.WebPages.candidateApplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="region" runat="server">
    <div class="hero-wrap hero-wrap-2" style="background-image: url('../Assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-end justify-content-start">
                <div class="col-md-8 ftco-animate text-center text-md-left mb-5">
                    <p class="breadcrumbs mb-0"><span class="mr-3"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span><span>Job Posts</span></p>
                    <h1 class="mb-3 bread">candidate List</h1>
                </div>
            </div>
        </div>
    </div>
    <form runat="server" style="padding: 30px">
    

        <asp:GridView ID="GridView1" runat="server"  CellPadding="4" AutoGenerateColumns="False" ForeColor="#333333" GridLines="None" style AllowSorting="True" AutoGenerateEditButton="True" HorizontalAlign="Center">
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor    ="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            
            <Columns>
                <asp:TemplateField HeaderText="Sr No" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                    <ItemStyle Width="10%"></ItemStyle>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Title " ItemStyle-Height="50px">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lbl" Text='<%# Bind("title") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               <asp:TemplateField HeaderText="Job type ">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lbl" Text='<%# Bind("Job_type") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               <asp:TemplateField HeaderText="Location ">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lbl" Text='<%# Bind("Location") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               <asp:TemplateField HeaderText="Branch Name ">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lbl" Text='<%# Bind("Company") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               <asp:TemplateField HeaderText="Description ">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lbl" Text='<%# Bind("Description") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               <asp:TemplateField HeaderText="Required experiance ">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lbl" Text='<%# Bind("Req_experiance") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               <asp:TemplateField HeaderText="Approx salary ">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lbl" Text='<%# Bind("Expected_salary") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               <asp:TemplateField HeaderText="No of Vacancy ">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lbl" Text='<%# Bind("vacancy") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               <asp:TemplateField HeaderText="Department ">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lbl" Text='<%# Bind("dept") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               <asp:TemplateField HeaderText= " No of Application">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lbl" Text='<%# Eval("CO").ToString().Equals("")   ? "0" :Eval("CO") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               
            </Columns>
        </asp:GridView>
    </form>
</asp:Content>
