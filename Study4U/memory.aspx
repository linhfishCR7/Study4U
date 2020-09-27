<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="memory.aspx.cs" Inherits="Study4U.memory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- bradcam_area  -->
    <div class="bradcam_area bradcam_bg_4">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text text-center">
                        <h3>Góc kĩ niệm</h3>
                        <p>Pixel perfect design with awesome contents</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ bradcam_area  -->



    <!-- Start Align Area -->
    <div class="whole-wrap">
        <div class="container box_1170">


            <div class="section-top-border">
                <h3>Ảnh kỉ niệm</h3>

                <div class="row gallery-item">

                    <div class="col-md-4">
                        <asp:Panel ID="Panel1" runat="server">
                            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ID_KiNiem">
                                <EmptyDataTemplate>
                                    <span>No data was returned.</span>
                                </EmptyDataTemplate>
                                <ItemTemplate>
                                    <a href="<%# Eval("HinhAnhKiNiem") %>" class="img-pop-up">
                                        <div class="single-gallery-image" style="background: url('<%# Eval("HinhAnhKiNiem") %>');"></div>
                                    </a>
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
                            SelectCommand="SELECT * FROM [tbl10_KiNiem]"></asp:SqlDataSource>
                    </div>

                </div>

            </div>

        </div>
    </div>

    <!-- End Align Area -->

</asp:Content>
