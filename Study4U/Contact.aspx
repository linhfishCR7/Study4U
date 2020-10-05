<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Study4U.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- bradcam_area  -->
    <div class="bradcam_area bradcam_bg_4">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text text-center">
                        <h3>LIÊN LẠC</h3>
                        <p>Công ty TNHH TM-DV Tư vấn Du học Study4U</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ bradcam_area  -->

    <!-- ================ contact section start ================= -->
    <section class="contact-section">
        <div class="container">
            <div class="d-none d-sm-block mb-5 pb-4">
                <div id="map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.2663467334546!2d106.69868931489198!3d10.790900992311652!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528b56eea6059%3A0x424701e4f0833dfa!2zNjUgTmd1eeG7hW4gQuG7iW5oIEtoacOqbSwgxJBhIEthbywgUXXhuq1uIDEsIFRow6BuaCBwaOG7kSBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2sus!4v1601197141999!5m2!1svi!2sus" width="1110" height="480" frameborder="0" style="border: 0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
            </div>


            <div class="row">
                <div class="col-12">
                    <h2 class="contact-title">LIÊN HỆ VỚI CHÚNG TÔI</h2>
                </div>
                <div class="col-lg-7">
                    <form id="form1" runat="server">
                        <asp:Panel ID="Panel1" runat="server" DefaultButton="btnSubmit">

                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*"
                                            ControlToValidate="NoiDung" ValidationGroup="save" /><br />

                                        <asp:TextBox ID="NoiDung" CssClass="form-control w-100" runat="server"
                                            TextMode="MultiLine" Rows="10" placeholder=" Nhập nội dung" />
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                                            ControlToValidate="YourName" ValidationGroup="save" /><br />
                                        <asp:TextBox ID="YourName" CssClass="form-control valid" type="text" runat="server" placeholder="Nhập tên của bạn" /><br />

                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                                            ControlToValidate="YourEmail" ValidationGroup="save" /><br />
                                        <asp:TextBox ID="YourEmail" CssClass="form-control valid" type="text" runat="server" placeholder="Email" /><br />

                                        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator23"
                                            SetFocusOnError="true" Text="Example: username@gmail.com" ControlToValidate="YourEmail"
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                                            ValidationGroup="save" />

                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                                            ControlToValidate="YourSubject" ValidationGroup="save" /><br />
                                        <asp:TextBox ID="YourSubject" CssClass="form-control valid" type="text" runat="server" placeholder="Nhập chủ đề" /><br />


                                    </div>
                                </div>
                                  <div class="col-12">
                                    <div class="form-group">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
                                            ControlToValidate="YourPhoneNumber" ValidationGroup="save" /><br />
                                        <asp:TextBox ID="YourPhoneNumber" CssClass="form-control valid" type="text" runat="server" placeholder="Số điện thoại" /><br />


                                    </div>
                                </div>
                            </div>
                            <div class="form-group mt-3">
                                      <asp:Button ID="btnSubmit" runat="server" Text="Gửi"
                                          OnClick="Button1_Click" ValidationGroup="save" Cssclass="button button-contactForm boxed-btn" />
<%--                                <button type="submit" class="button button-contactForm boxed-btn">Gửi</button>--%>
                            </div>
                        </asp:Panel>
                        <p>
                            <asp:Label ID="DisplayMessage" runat="server" Style="color:deepskyblue; font-size:medium;" Visible="false" />
                        </p>
                    </form>
                </div>
                <div class="col-lg-4 offset-lg-1">
                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="ti-home"></i></span>
                        <div class="media-body">
                            <h3>65 Nguyễn Bỉnh Khiêm, Phường Đakao</h3>
                            <p>Quận 1 Thành phố HCM</p>
                        </div>
                    </div>
                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="ti-tablet"></i></span>
                        <div class="media-body">
                            <h3>+090 863 79 88</h3>
                            <p>Thứ 2 đến thứ 6 08:30 - 17:00 </p>
                            <p>Thứ 7 08:30 - 12:00</p>
                            <p>Chủ nhật đóng cửa</p>
                        </div>
                    </div>
                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="ti-email"></i></span>
                        <div class="media-body">
                            <h3>hung.vo@study4u.com.vn</h3>
                            <p>24/7</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ================ contact section end ================= -->

</asp:Content>
