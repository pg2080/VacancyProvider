<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Admin.Master" AutoEventWireup="true" CodeBehind="RegisterdCandidates.aspx.cs" Inherits="JobPortal.WebPages.RegisterdCandidates" %>
<asp:Content ID="Content1" ContentPlaceHolderID="region" runat="server">
    <div class="hero-wrap hero-wrap-2" style="background-image: url('../Assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-end justify-content-start">
                <div class="col-md-8 ftco-animate text-center text-md-left mb-5">
                    <p class="breadcrumbs mb-0"><span class="mr-3"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span><span>Job Posts</span></p>
                    <h1 class="mb-3 bread">Candidate List</h1>
                </div>
            </div>
        </div>
    </div>


    <section class="ftco-section bg-light"  style="padding:50px">
    
    
     <form runat="server">
     <asp:GridView runat="server" ID="grdCandidateList" AutoGenerateColumns ="false" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        <Columns>
            <asp:TemplateField HeaderText = "Sr No" ItemStyle-Width="10%">
        <ItemTemplate>
               <%# Container.DataItemIndex + 1 %>
        </ItemTemplate>
    </asp:TemplateField><asp:BoundField HeaderText="Frist Name" ItemStyle-Width="20%" DataField="Fname" />
            <asp:BoundField HeaderText="Last Name" ItemStyle-Width="20%" DataField="Lname" />
            <asp:BoundField HeaderText="Email" ItemStyle-Width="20%" DataField="Email" />
            <asp:BoundField HeaderText="Address" ItemStyle-Width="20%" DataField="Address" />
            <asp:BoundField HeaderText="State" ItemStyle-Width="20%" DataField="State" />
            <asp:BoundField HeaderText="Mobile" ItemStyle-Width="20%" DataField="Mobile" />
            <asp:BoundField HeaderText="Gender" ItemStyle-Width="20%"  DataField="Gender" />
            <asp:BoundField HeaderText="Status" ItemStyle-Width="20%"  DataField="Merital_status" />
        </Columns>
    </asp:GridView>

    </form>

        </section>
</asp:Content>
