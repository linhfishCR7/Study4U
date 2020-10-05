<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Login.Master" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="Study4U.Admin.LoginAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row justify-content-center">
        <div class="col-md-8 col-lg-6 col-xl-5">
            <div class="account-card-box">
                <div class="card mb-0">
                    <div class="card-body p-4">

                        <div class="text-center">
                            <div class="my-3">
                                <a href="index.html">
                                    <span>
                                        <img src="\Content\Admin\assets\images\logo.png" alt="" height="28"></span>
                                </a>
                            </div>
                            <h5 class="text-muted text-uppercase py-3 font-16">Sign In</h5>
                        </div>

                        <form id="form1" runat="server" class="mt-6">

                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <asp:Login ID="Login1" runat="server" TextLayout="TextOnTop" CssClass="col-md-12 col-sm-12 col-xs-12"
                                        Width="100%" TitleText="" RememberMeSet="True"
                                        PasswordLabelText="Password:" LoginButtonText="Login" RememberMeText="Remember me." UserNameLabelText="User:"
                                        OnAuthenticate="Login1_Authenticate1">
                                        <LoginButtonStyle CssClass="btn btn-success btn-block waves-effect waves-light" />
                                        <TextBoxStyle CssClass="form-control input-sm" />
                                    </asp:Login>
                                </div>
                            </div>
                        </form>


                    </div>
                    <!-- end card-body -->
                </div>
                <!-- end card -->
            </div>

            <!-- end row -->

        </div>
        <!-- end col -->
    </div>
    <!-- end row -->

</asp:Content>
