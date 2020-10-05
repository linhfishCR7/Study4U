<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="EventDetails.aspx.cs" Inherits="Study4U.EventDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- bradcam_area  -->
    <div class="bradcam_area bradcam_bg_4">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text text-center">
                        <h3>SỰ KIỆN CHI TIẾT</h3>
                        <p>Pixel perfect design with awesome contents</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ bradcam_area  -->

    <!--================Blog Area =================-->
                                <form runat="server">

    <section class="blog_area single-post-area section-padding">
        <div class="container">
            <div class="row">

                                <div class="col-lg-4">
                    <div class="blog_right_sidebar">


                        <aside class="single_sidebar_widget popular_post_widget">
                            <h3 class="widget_title">SỰ KIỆN GẦN ĐÂY</h3>
                            <asp:Panel ID="Panel2" runat="server">
                                <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="ID_Event" OnItemCommand="ListView2_ItemCommand">
                                    <EmptyDataTemplate>
                                        <span>No data was returned.</span>
                                    </EmptyDataTemplate>
                                    <ItemTemplate>
                                        <div class="media post_item">
                                            <a>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Select">
                                                    <asp:Image ID="Image2" runat="server" Style="width: 80px; height: 80px;" ImageUrl='<%# Bind("HinhAnh") %>' />
                                                </asp:LinkButton>
                                            </a>
                                            <div class="media-body">
                                                    <h3>
                                                         <asp:LinkButton ID="SelectButton" runat="server" CommandName="Select">
                                                        <asp:Label ID="lblChuDe" runat="server" Text='<%# Eval("ChuDe") %>' /></asp:LinkButton>
                                                    </h3>
                                                <p><%#Eval("NgayDang","{0:MMM dd, yyyy}")%>  </p>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <div id="itemPlaceholderContainer" runat="server" style="">
                                            <span runat="server" id="itemPlaceholder" />
                                        </div>
                                        <div style="">
                                        </div>
                                    </LayoutTemplate>
                                </asp:ListView>
                            </asp:Panel>
                        </aside>

                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Study4UConnectionString %>"
                            SelectCommand="SELECT TOP (4) ID_Event, ChuDe, HinhAnh, NgayDang FROM tbl06_Event ORDER BY ID_User DESC, NgayBatDau DESC, NgayKetThuc DESC"></asp:SqlDataSource>

                    <%--    <aside class="single_sidebar_widget newsletter_widget">
                            <h4 class="widget_title">Newsletter</h4>

                            <form action="#">
                                <div class="form-group">
                                    <input type="email" class="form-control" onfocus="this.placeholder = ''"
                                        onblur="this.placeholder = 'Enter email'" placeholder='Enter email' required />
                                </div>
                                <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
                                    type="submit">
                                    Subscribe</button>
                            </form>
                        </aside>--%>
                    </div>
                </div>



                <div class="col-lg-8 posts-list">
                    <asp:Panel ID="Panel1" runat="server">
                        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ID_Event">
                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>
                            <ItemTemplate>
                                <div class="single-post">
                                    <div class="feature-img">
                                        <asp:Image ID="Image2" CssClass="img-fluid" runat="server" ImageUrl='<%# Bind("HinhAnh") %>' />

                                    </div>
                                    <div class="blog_details">
                                        <h2>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("ChuDe") %>' />

                                        </h2>
                                        <ul class="blog-info-link mt-3 mb-4">
                                            <li><a href="#"><i class="fa fa-user"></i>
                                               <%# Eval("TenUser") %>
                                            </a></li>
                                        </ul>

                                        <p>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("NoiDung") %>' />

                                        </p>
                                    </div>
                                </div>
                                <div class="navigation-top">
                                    <div class="d-sm-flex justify-content-between text-center">
                                        <div class="col-sm-4 text-center my-2 my-sm-0">
                                        </div>
                                        <ul class="social-icons">
                                            <li><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                            <li><a href="#"><i class="fa fa-behance"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server" style="">
                                    <span runat="server" id="itemPlaceholder" />
                                </div>
                                <div style="">
                                </div>
                            </LayoutTemplate>
                        </asp:ListView>
                    </asp:Panel>
                </div>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Study4UConnectionString %>"
                    SelectCommand="SELECT tbl06_Event.ID_Event, tbl06_Event.ChuDe, tbl06_Event.MoTa, tbl06_Event.NoiDung, tbl06_Event.NgayBatDau, tbl06_Event.NgayKetThuc, tbl06_Event.HinhAnh, tbl06_Event.ID_User, tbl05_User.TenUser, tbl06_Event.NgayDang FROM tbl06_Event INNER JOIN tbl05_User ON tbl06_Event.ID_User = tbl05_User.ID_User WHERE (tbl06_Event.ID_Event = @ID_Event) ORDER BY tbl06_Event.ID_Event DESC">
                    <SelectParameters>
                        <asp:SessionParameter Name="ID_Event" SessionField="ID_Event" Type="Int32" />

                    </SelectParameters>
                </asp:SqlDataSource>
            </div>

        </div>
    </section>
    <!--================ Blog Area end =================-->
</form>
</asp:Content>
