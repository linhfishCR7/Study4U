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
                        <h3>GÓC KỶ NIỆM</h3>
                        <p>Pixel perfect design with awesome contents</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ bradcam_area  -->


     <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
   
                    <div class="container" style="margin-top: 50px;">
                        <div class="row justify-content-center">
                            <div class="text-center">
                                <h2 class="mb-4">BỘ ẢNH</h2>

                            </div>
                            <asp:Panel ID="Panel1" runat="server">
                                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ID_KiNiem">
                                    <EmptyDataTemplate>
                                        <span>No data was returned.</span>
                                    </EmptyDataTemplate>
                                    <ItemTemplate>
                                        <div class="col-md-4 col-sm-8 col-xs-12 ">
                                            <a href="<%# Eval("HinhAnhKiNiem") %>" class="img-pop-up img-responsive">
                                                <img src="<%# Eval("HinhAnhKiNiem") %>" class="img-responsive img-fluid img-thumbnail" style="height:250px;" />

                                            </a>
                                        </div>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <div id="itemPlaceholderContainer" runat="server" style="">
                                            <span runat="server" id="itemPlaceholder" />
                                        </div>

                                    </LayoutTemplate>
                                </asp:ListView>
                            </asp:Panel>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Study4UConnectionString %>"
                                SelectCommand="SELECT TOP 16 * FROM [tbl10_KiNiem]"></asp:SqlDataSource>
                        </div>


                    </div>

     </form>
    <!-- End Align Area -->

</asp:Content>
