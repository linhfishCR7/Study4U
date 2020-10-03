<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Event.aspx.cs" Inherits="Study4U.Event" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- bradcam_area  -->
    <div class="bradcam_area bradcam_bg_4">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text text-center">
                        <h3>Event</h3>
                        <p>Pixel perfect design with awesome contents</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ bradcam_area  -->


    <!--================Blog Area =================-->
                            <form runat="server">

    <section class="blog_area section-padding">
        <div class="container">
            <div class="row">
                 <div class="col-lg-12 col-md-12">
                        <div class="blog_item text-center">
                            <h1>Danh sách các sự kiện</h1>
                        </div>
                    </div>
                <div class="col-lg-8 mb-5 mb-lg-0">
                    <div class="blog_left_sidebar">


                            <asp:Panel ID="Panel1" runat="server">
                                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ID_Event" OnItemCommand="ListView1_ItemCommand">
                                    <EmptyDataTemplate>
                                        <span>No data was returned.</span>
                                    </EmptyDataTemplate>
                                    <ItemTemplate>
                                        <article class="blog_item">
                                            <div class="blog_item_img">
                                                <a href="/LoginSystem">
                                                    <asp:Image ID="Image2" CssClass="card-img rounded-0" runat="server" ImageUrl='<%# Bind("HinhAnh") %>' />

                                                </a>

                                                <a href="#" class="blog_item_date">
                                                    <h3>
                                                        <%#Eval("NgayDang","{0:dd}")%>  

                                                    </h3>
                                                    <p><%#Eval("NgayDang","{0:MMM}")%></p>
                                                </a>
                                            </div>

                                            <div class="blog_details">
                                                <a class="d-inline-block" href="#">
                                                    <h2>
                                                        <asp:Label ID="lblChuDe" runat="server" Text='<%# Eval("ChuDe") %>' />
                                                    </h2>
                                                </a>
                                                <p>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("MoTa") %>' />
                                                </p>
                                                <p>
                                                    <asp:Button ID="SelectButton" runat="server" CssClass="btn btn-sm mauxam" Text="View more..." CommandName="Select" />
                                                </p>
                                            </div>
                                        </article>


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


                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Study4UConnectionString %>"
                            SelectCommand="SELECT TOP 4 * FROM [tbl06_Event] ORDER BY [ID_User] DESC"></asp:SqlDataSource>


                        <nav class="blog-pagination justify-content-center d-flex">
                            <ul class="pagination">
                                <li class="page-item">
                                    <a href="#" class="page-link" aria-label="Previous">
                                        <i class="ti-angle-left"></i>
                                    </a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link">1</a>
                                </li>
                                <li class="page-item active">
                                    <a href="#" class="page-link">2</a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link" aria-label="Next">
                                        <i class="ti-angle-right"></i>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>

                <!--post current-->

                <div class="col-lg-4">
                    <div class="blog_right_sidebar">




                        <aside class="single_sidebar_widget popular_post_widget">
                            <h3 class="widget_title">Recent Post</h3>
                            <asp:Panel ID="Panel2" runat="server">
                                <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="ID_Event" OnItemCommand="ListView2_ItemCommand">
                                    <EmptyDataTemplate>
                                        <span>No data was returned.</span>
                                    </EmptyDataTemplate>
                                    <ItemTemplate>
                                        <div class="media post_item">
                                            <a href="/LoginSystem">
                                                <asp:Image ID="Image2" runat="server" Style="width: 80px; height: 80px;" ImageUrl='<%# Bind("HinhAnh") %>' />

                                            </a>
                                            <div class="media-body">
                                                    <h3>
                                                        <asp:Label ID="lblChuDe" runat="server" Text='<%# Eval("ChuDe") %>' />
                                                        <asp:Button ID="SelectButton" runat="server" CssClass="btn btn-sm mauxam" Text="View more..." CommandName="Select" />
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

            </div>
        </div>
    </section>
    <!--================Blog Area =================-->
                        </form>

</asp:Content>
