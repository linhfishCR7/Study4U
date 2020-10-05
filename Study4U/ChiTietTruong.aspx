<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ChiTietTruong.aspx.cs" Inherits="Study4U.ChiTietTruong" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="ID_Truong">
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <ItemTemplate>
                <div class="destination_banner_wrap overlay" style="background-image: url('<%# Eval("HinhAnhBanner") %>')">
                    <div class="destination_text text-center">

                        <h3><%# Eval("TenTruong") %></h3>
                        <p>Pixel perfect design with awesome contents</p>
                    </div>

                </div>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="">
                    <span runat="server" id="itemPlaceholder" />
                </div>

            </LayoutTemplate>
        </asp:ListView>
    </asp:Panel>
    <div class="destination_details_info">
        <div class="container">
            <div class="row justify-content-center">
                <asp:Panel ID="Panel2" runat="server">
                    <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="ID_Truong">
                        <EmptyDataTemplate>
                            <span>No data was returned.</span>
                        </EmptyDataTemplate>
                        <ItemTemplate>
                            <div class="col-lg-10 col-md-9">
                                <div class="destination_info">
                                    <h3>Description</h3>
                                    <p><%# Eval("Mota") %></p>
                                    <div>
                                        <asp:Image ID="Image2" CssClass="img-fluid" runat="server" ImageUrl='<%# Bind("HinhAnh") %>' />
                                    </div>
                                    <%--                                    <div class="video_area video_bg overlay">
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
                                    </div>--%>
                                    <br></br>
                                    <div class="single_destination">
                                        <h3>Content</h3>
                                        <p>
                                            <%# Eval("NoiDung") %>
                                        </p>
                                    </div>

                                </div>
                                <div class="bordered_1px"></div>
                                <div class="contact_join">
                                    <h3>Contact for join</h3>
                                    <form action="#">
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6">
                                                <div class="single_input">
                                                    <input type="text" placeholder="Your Name">
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-6">
                                                <div class="single_input">
                                                    <input type="text" placeholder="Phone no.">
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="single_input">
                                                    <textarea name="" id="" cols="30" rows="10" placeholder="Message"></textarea>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="submit_btn">
                                                    <button class="boxed-btn4" type="submit">submit</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Study4UConnectionString %>"
        SelectCommand="SELECT * FROM [tbl04_TruongHoc] WHERE ([ID_Truong] = @ID_Truong)">
        <SelectParameters>
            <asp:SessionParameter Name="ID_Truong" SessionField="ID_Truong" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <!-- newletter_area_start  -->
<%--    <div class="newletter_area overlay">
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
        <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div class="popular_places_area">
            <div class="container">
                <div class="row">

                    <div class="col-lg-12 col-md-12">
                        <div class="single_place text-center">
                            <h1>Các trường khác</h1>
                        </div>
                    </div>
                    <asp:Panel ID="Panel3" runat="server">
                        <asp:ListView ID="ListView" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ID_Truong" OnItemCommand="ListView_ItemCommand">
                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>
                            <ItemTemplate>
                                <div class="col-lg-4 col-md-4">
                                    <div class="single_place">
                                        <div class="thumb">
                                            <asp:Image ID="Image2" CssClass="card-img rounded-0" runat="server" ImageUrl='<%# Bind("HinhAnh") %>' />
                                        </div>
                                        <div class="place_info">
                                            <a href="destination_details.html">
                                                <h3><%# Eval("TenTruong") %></h3>
                                            </a>
                                            <p><%# Eval("MoTa") %></p>
                                              <p>
                                                <asp:Button ID="SelectButton1" runat="server" CssClass="btn btn-sm mauxanh" Text="View more..." CommandName="Select1" />
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
                        SelectCommand="SELECT TOP 3 * FROM [tbl04_TruongHoc]"></asp:SqlDataSource>
                </div>

            </div>
        </div>
            </form>
</asp:Content>
