<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Program.aspx.cs" Inherits="Study4U.Program" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
                <form runat="server">

    <!-- bradcam_area  -->
    <div class="bradcam_area bradcam_bg_2">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text text-center">
                        <h3>CHƯƠNG TRÌNH DU HỌC</h3>
                        <p>Pixel perfect design with awesome contents</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ bradcam_area  -->



    <div class="popular_places_area">
        <div class="container">
            <asp:Panel ID="Panel1" runat="server">
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ID_QG">
                    <EmptyDataTemplate>
                        <span>No data was returned.</span>
                    </EmptyDataTemplate>
                    <ItemTemplate>
                        <div class="row justify-content-center">
                            <div class="col-lg-12">
                                <div class="section_title  mb_70">
                                    <h3 class="text-center">THÔNG TIN VỀ QUỐC GIA                                                
                                        <%# Eval("TenQG") %>
                                    </h3>
                                    <p>
                                        <%# Eval("MoTa") %>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-lg-12 text-center">
                                <asp:Image ID="Image1" runat="server" style="height:500px; width:100%;" CssClass="img-fluid" ImageUrl='<%# Bind("HinhAnhMoTaQG") %>' />
                            </div>
                        </div>
                        <br />
                        <br></br>
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
                SelectCommand="SELECT * FROM [tbl01_QuocGia] WHERE ([ID_QG] = @ID_QG) ORDER BY [ID_QG] DESC">
                <SelectParameters>
                    <asp:SessionParameter Name="ID_QG" SessionField="ID_QG" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <%--            tieu de chuong trinh--%>
            <asp:Panel ID="Panel3" runat="server">
                <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ID_QG">
                    <EmptyDataTemplate>
                        <span>No data was returned.</span>
                    </EmptyDataTemplate>
                    <ItemTemplate>
                        <div class="row justify-content-center">

                            <div class="col-lg-8">
                                <div class="section_title text-center mb_70">
                                    <h3>
                                        CHƯƠNG TRÌNH DU HỌC <%# Eval("TenQG") %>
                                    </h3>
                                    <p>
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

                <div class="row">
                    <asp:Panel ID="Panel2" runat="server">
                        <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="ID_CT" OnItemCommand="ListView_ItemCommand">
                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>
                            <ItemTemplate>
                                <div class="col-lg-6 col-md-6">
                                    <div class="single_place">
                                        <div class="thumb">
                                            <asp:LinkButton ID="SelectButton3" runat="server" CommandName="Select">
                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("HinhAnhCT") %>' />
                                            </asp:LinkButton>

                                        </div>
                                        <div class="place_info">
                                            <a href="destination_details.html">
                                                <h3>
                                                     <asp:LinkButton ID="SelectButton2" runat="server" CommandName="Select">
                                                        <asp:Label ID="lblTenCT" runat="server" Text='<%# Eval("TenCT") %>' /></asp:LinkButton>
                                                </h3>
                                            </a>
                                            <p><i class="fa fa-flag"></i> QUỐC GIA <%# Eval("TenQG") %></p>
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Study4UConnectionString %>"
                        SelectCommand="SELECT tbl02_ChuongTrinh.ID_CT, tbl02_ChuongTrinh.TenCT, tbl02_ChuongTrinh.HinhAnhCT, tbl02_ChuongTrinh.ID_QG, tbl01_QuocGia.TenQG FROM tbl02_ChuongTrinh INNER JOIN tbl01_QuocGia ON tbl02_ChuongTrinh.ID_QG = tbl01_QuocGia.ID_QG WHERE (tbl02_ChuongTrinh.ID_QG = @ID_QG)">
                        <SelectParameters>
                            <asp:SessionParameter Name="ID_QG" SessionField="ID_QG" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
        </div>
    </div>

    <!-- newletter_area_start  -->
    <div class="newletter_area overlay">
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
    </div>
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

                    <asp:Panel ID="Panel4" runat="server">
                        <asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource3" DataKeyNames="ID_Event" OnItemCommand="ListView3_ItemCommand">
                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>
                            <ItemTemplate>
                                <div class="col-lg-4 col-md-6">
                                    <div class="single_trip">
                                        <div class="thumb">
                                            <asp:Image ID="Image2" CssClass="card-img rounded-0" runat="server" ImageUrl='<%# Bind("HinhAnh") %>' />
                                        </div>
                                        <div class="info">
                                            <div class="date">
                                                <span><%#Eval("NgayDang","{0:MMM dd, yyyy}")%>  
                                                </span>
                                            </div>
                                            <a href="#">
                                                <h3>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ChuDe") %>' />
                                                </h3>
                                                <p>
                                                    <asp:Button ID="SelectButton" runat="server" CssClass="btn btn-sm mauxam" Text="View more..." CommandName="Select" />
                                                </p>

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
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Study4UConnectionString %>"
                        SelectCommand="SELECT TOP 3 * FROM [tbl06_Event] ORDER BY [ID_User] DESC"></asp:SqlDataSource>
                </div>
            </div>
        </div>
 </form>

</asp:Content>
