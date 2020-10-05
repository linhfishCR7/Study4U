<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Study4U._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">

        <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->



        <!-- slider_area_start -->

                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>

                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="/Content/img/banner/girl.png" class="d-block w-100 " alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="/Content/img/banner/library1.png" class="d-block w-100 "  alt="...">
                        </div>
                      
                         <div class="carousel-item">
                            <img src="/Content/img/banner/Cambridge1.png" class="d-block w-100 " alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="/Content/img/banner/Oxfore1.png" class="d-block w-100 "  alt="...">
                        </div>
                         <div class="carousel-item">
                            <img src="/Content/img/banner/Princeton1.png" class="d-block w-100 "  alt="...">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
 
        <!-- slider_area_end -->



        <!-- popular_destination_area_start  -->
        <div class="popular_destination_area">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <div class="section_title text-center mb_70">
                            <h3>ĐIỂM ĐẾN DU HỌC</h3>
                            <p>
                                Suffered alteration in some form, by injected humour or good day randomised booth anim 8-bit
                            hella wolf moon beard words.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <asp:Panel ID="Panel3" runat="server">
                        <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource3" DataKeyNames="ID_QG" OnItemCommand="ListView3_ItemCommand">
                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>
                            <ItemTemplate>
                                <div class="col-lg-4 col-md-6">
                                    <div class="single_destination">
                                        <div class="thumb">
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("HinhAnhQG") %>' />
                                        </div>
                                        <div class="content">
                                          
                                            <p class="d-flex align-items-center">
                                                <%# Eval("TenQG") %>
                                                <asp:LinkButton ID="SelectButton" runat="server" CommandName="Select">
                                                    CHI TIẾT...
                                                </asp:LinkButton>
                                            </p>
                                        </div>
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
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Study4UConnectionString %>"
            SelectCommand="SELECT * FROM [tbl01_QuocGia] ORDER BY [ID_QG] DESC"></asp:SqlDataSource>
        <!-- popular_destination_area_end  -->

        <!-- newletter_area_start  -->
        <%--        <div class="newletter_area overlay">
            <div class="container">
                <div class="row justify-content-center align-items-center">
                    <div class="col-lg-10">
                        <div class="row align-items-center">
                            <div class="col-lg-5">
                                <div class="newsletter_text">
                                    <h4>Subscribe Our Newsletter</h4>
                                    <p>
                                        Subscribe newsletter to get offers and about
                                    new places to discover.
                                    </p>
                                </div>
                            </div>
                            <div class="col-lg-7">
                                <div class="mail_form">
                                    <div class="row no-gutters">
                                        <div class="col-lg-9 col-md-8">
                                            <div class="newsletter_field">
                                                <input type="email" placeholder="Your mail">
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-4">
                                            <div class="newsletter_btn">
                                                <button class="boxed-btn4 " type="submit">Subscribe</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
        <!-- newletter_area_end  -->

        <div class="popular_places_area">
            <div class="container">
                <div class="row">

                    <div class="col-lg-12 col-md-12">
                        <div class="single_place text-center">
                            <h1>Danh sách các trường đại học nổi tiếng</h1>
                        </div>
                    </div>
                    <asp:Panel ID="Panel1" runat="server">
                        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ID_Truong" OnItemCommand="ListView1_ItemCommand">
                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>
                            <ItemTemplate>
                                <div class="col-lg-4 col-md-4">
                                    <div class="single_place">
                                        <div class="thumb">
                                            <asp:LinkButton ID="SelectButton111" runat="server" CommandName="Select">
                                                   <asp:Image ID="Image2" CssClass="card-img rounded-0" runat="server" ImageUrl='<%# Bind("HinhAnh") %>' />                                              
                                                    </asp:LinkButton>
                                           
                                        </div>
                                        <div class="place_info">
                                            <a>

                                                <h3>
                                                    <asp:LinkButton ID="SelectButton11" runat="server" CommandName="Select">
                                                    <%# Eval("TenTruong") %>                                                
                                                    </asp:LinkButton></h3>
                                            </a>
                                            <p><%# Eval("MoTa") %></p>
                                            <p>
                                                <asp:Button ID="SelectButton" runat="server" CssClass="btn btn-sm mauxanh" Text="CHI TIẾT..." CommandName="Select" />
                                            </p>
                                        </div>
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Study4UConnectionString %>"
                        SelectCommand="SELECT * FROM [tbl04_TruongHoc]"></asp:SqlDataSource>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="more_place_btn text-center">
                            <a class="boxed-btn4" href="/University.aspx">Xem Thêm</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>


        <div class="video_area video_bg overlay">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="video_wrap text-center">
                            <h3>Enjoy Video</h3>
                            <div class="video_icon">
                                <a class="popup-video video_play_button" href="https://vimeo.com/45830194">
                                    <i class="fa fa-play"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="travel_variation_area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="single_travel text-center">
                            <div class="icon">
                                <img src="/Content/img/svg_icon/boy-1300242.svg" alt="">
                            </div>
                            <h3>Certified Teachers</h3>
                            <p>
                                Even the all-powerful Pointing has no control about the blind texts it is an almost
                            unorthographic.
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single_travel text-center">
                            <div class="icon">
                                <img src="/Content/img/svg_icon/books-2247434.svg" alt="">
                            </div>
                            <h3>Book &amp; Library</h3>
                            <p>
                                Even the all-powerful Pointing has no control about the blind texts it is an almost
                            unorthographic.
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single_travel text-center">
                            <div class="icon">
                                <img src="/Content/img/svg_icon/boy-34619.svg" alt="">
                            </div>
                            <h3>Special Education</h3>
                            <p>
                                Even the all-powerful Pointing has no control about the blind texts it is an almost
                            unorthographic.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- testimonial_area  -->
        <%--   <div class="testimonial_area">
            <div class="container">
                                            <div class="row">

                <div class="single_testmonial text-center">
                    <h2 class="mb-4">Student Says About Us</h2>

                </div>
                <br></br>
                <asp:Panel ID="Panel3" runat="server">
                    <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource3" DataKeyNames="ID_KH">
                        <EmptyDataTemplate>
                            <span>No data was returned.</span>
                        </EmptyDataTemplate>
                        <ItemTemplate>
                                <div class="col-lg-12 img-responsive">
                                   <div class="testmonial_active owl-carousel">
                                         <div class="single_carousel">
                                            <div class="row justify-content-center">
                                                <div class="col-lg-12">
                                                    <div class="single_testmonial text-center">
                                                        <div class="author_thumb">
                                                            <asp:Image ID="Image2" CssClass="card-img rounded-0" runat="server" ImageUrl='<%# Bind("HinhAnh") %>' />
                                                        </div>
                                                        <p>
                                                            <%#Eval("Cmt")%>
                                                        </p>
                                                        <div class="testmonial_author">
                                                            <h3><%#Eval("TenKH")%>  
                                                            </h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
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

            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Study4UConnectionString %>"
            SelectCommand="SELECT * FROM [tbl07_Comment] ORDER BY [ID_KH] DESC"></asp:SqlDataSource>--%>
        <!-- /testimonial_area  -->


        <div class="recent_trip_area">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <div class="section_title text-center mb_70">
                            <h3>Recent Events</h3>
                        </div>
                    </div>
                </div>
                <div class="row">

                    <asp:Panel ID="Panel2" runat="server">
                        <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="ID_Event" OnItemCommand="ListView2_ItemCommand">
                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>
                            <ItemTemplate>
                                <div class="col-lg-4 col-md-6">
                                    <div class="single_trip">
                                        <div class="thumb">
                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Select">
                                            <asp:Image ID="Image2" CssClass="card-img rounded-0" runat="server" ImageUrl='<%# Bind("HinhAnh") %>' />
                                                    </asp:LinkButton>
                                        </div>
                                        <div class="info">
                                            <div class="date">
                                                <span><%#Eval("NgayDang","{0:MMM dd, yyyy}")%>  
                                                </span>
                                            </div>
                                            <a href="#">
                                                <h3>
                                                       <asp:LinkButton ID="SelectButton11" runat="server" CommandName="Select">
                                                    <%# Eval("ChuDe") %>                                                
                                                    </asp:LinkButton>
                                                </h3>
                                                

                                            </a>
                                        </div>
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Study4UConnectionString %>"
                        SelectCommand="SELECT TOP 3 * FROM [tbl06_Event] ORDER BY [ID_User] DESC"></asp:SqlDataSource>
                </div>
            </div>
        </div>

    </form>

</asp:Content>
