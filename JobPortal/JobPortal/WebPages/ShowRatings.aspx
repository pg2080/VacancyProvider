<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Admin.Master" AutoEventWireup="true" CodeBehind="ShowRatings.aspx.cs" Inherits="JobPortal.WebPages.ShowRatings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="region" runat="server">

    <form runat="server">
        <section class="ftco-section ftco-candidates ftco-candidates-2 ">

            <br />
            <br />
            <div class="ftco-search" style="padding: 0px 10px 0px 20px;">
                <div class="row">
                    <div class="col-md-12 nav-link-wrap">
                        <div class="nav nav-pills text-center" id="v-pills-tab" role="tablist" aria-orientation="vertical" style="border-bottom: 12px gainsboro solid;">
                            <a class="nav-link active mr-md-1" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">Student Ratings</a>

                            <a class="nav-link" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">HR Ratings</a>


                        </div>
                    </div>
                    <div class="col-md-12 tab-wrap">

                        <div class="tab-content p-4" id="v-pills-tabContent" style="background-color: white">

                            <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-nextgen-tab">
                                <asp:GridView BorderColor="Transparent" CssClass="container" runat="server" ID="grv" Width="50%" AutoGenerateColumns="false">
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
                                        <asp:TemplateField HeaderText="Sr No" ItemStyle-Width="10%">
                                            <ItemTemplate>
                                                <%# Container.DataItemIndex + 1 %>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="No of Star " ItemStyle-Width="10%">
                                            <ItemTemplate>
                                                <asp:Label Text='<%# Eval("star") %>' runat="server"></asp:Label>
                                                <asp:Label runat="server" CssClass="icon icon-star"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>


                                        <asp:BoundField HeaderText="Comment By User" DataField="comment" />
                                    </Columns>

                                </asp:GridView>



                            </div>

                            <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-performance-tab">
                                <asp:GridView BorderColor="Transparent" CssClass="container" runat="server" ID="grh" Width="65%" AutoGenerateColumns="false">
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
                                        <asp:TemplateField HeaderText="Sr No" ItemStyle-Width="10%">
                                            <ItemTemplate>
                                                <%# Container.DataItemIndex + 1 %>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="No of Star " ItemStyle-Width="10%">
                                            <ItemTemplate>
                                                <asp:Label Text='<%# Eval("star") %>' runat="server"></asp:Label>
                                                <asp:Label runat="server" CssClass="icon icon-star"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField HeaderText="Comment By User" DataField="comment" />
                                    </Columns>
                                </asp:GridView>
                            </div>


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
    </form>

</asp:Content>
