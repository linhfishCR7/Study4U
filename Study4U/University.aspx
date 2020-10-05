<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="University.aspx.cs" Inherits="Study4U.University" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- bradcam_area  -->
    <div class="bradcam_area bradcam_bg_2">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text text-center">
                        <h3>University</h3>
                        <p>Pixel perfect design with awesome contents</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ bradcam_area  -->


    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div class="popular_places_area">
            <div class="container">
                <div class="row">

                    <div class="col-lg-12 col-md-12">
                        <div class="single_place text-center">
                            <h1>Danh sách các trường đại học nổi tiếng</h1>
                        </div>
                    </div>
                    <asp:Panel ID="Panel1" runat="server">
                        <asp:ListView ID="ListView" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ID_Truong" OnItemCommand="ListView_ItemCommand">
                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>
                            <ItemTemplate>
                                <div class="col-lg-4 col-md-4">
                                    <div class="single_place">
                                        <div class="thumb">
                                            <asp:LinkButton ID="SelectButton2" runat="server" CommandName="Select1">
                                                <asp:Image ID="Image2" CssClass="card-img rounded-0" runat="server" ImageUrl='<%# Bind("HinhAnh") %>' />
                                            </asp:LinkButton>
                                        </div>
                                        <div class="place_info">
                                            <a href="#">
                                                <h3>
                                                    <asp:LinkButton ID="SelectButton" runat="server" CommandName="Select1">
                                                        <asp:Label ID="lblTenTruong" runat="server" Text='<%# Eval("TenTruong") %>' /></asp:LinkButton>
                                                </h3>
                                            </a>
                                            <p><%# Eval("MoTa") %></p>
                                              <p>
                                                <asp:Button ID="SelectButton1" runat="server" CssClass="btn btn-sm mauxanh" Text="CHI TIẾT..." CommandName="Select1" />
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

            </div>
        </div>

        <!-- newletter_area_start  -->
        <%--<div class="newletter_area overlay">
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
                                                <input type="email" placeholder="Your mail" />
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
                        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="ID_Event" OnItemCommand="ListView1_ItemCommand" >
                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>
                            <ItemTemplate>
                                <div class="col-lg-4 col-md-6">
                                    <div class="single_trip">
                                        <div class="thumb">
                                            <asp:LinkButton ID="SelectButton1" runat="server" CommandName="Select">
                                                <asp:Image ID="Image2" CssClass="card-img rounded-0" runat="server" ImageUrl='<%# Bind("HinhAnh") %>' />

                                            </asp:LinkButton>
                                        </div>
                                        <div class="info">
                                            <div class="date">
                                                <span><%#Eval("NgayDang","{0:MMM dd, yyyy}")%>  
                                                </span>
                                            </div>
                                            <a href="/Event.aspx">
                                                <h3>
                                                    <asp:LinkButton ID="SelectButton" runat="server" CommandName="Select">
                                                        <asp:Label ID="lblChuDe" runat="server" Text='<%# Eval("ChuDe") %>' />
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
