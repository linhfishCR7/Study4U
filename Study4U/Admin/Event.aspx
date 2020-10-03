<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="Event.aspx.cs" Inherits="Study4U.Admin.Event" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<%@ Register Namespace="CKFinder" Assembly="CKFinder" TagPrefix="CKFinder" %>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="panelPhanQuyen" runat="server">
        <div class="list-group">
            <div class="list-group-item maudo">
                UPDATE EVENT
            </div>
            <div class="list-group-item limit-500">
                <asp:UpdatePanel ID="upCrudGrid" runat="server">
                    <ContentTemplate>
                        <table class="table table-responsive">
                            <tr>
                                <td>
                                    <asp:LinkButton ID="btnAdd" runat="server" CssClass="btn mauxanh" OnClick="btnAdd_Click"><span class="ion ion-md-add-circle"></span> New</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                        <asp:GridView ID="GridView1" runat="server" Width="100%" HorizontalAlign="Center" OnRowCommand="GridView1_RowCommand"
                            AutoGenerateColumns="False"
                            DataKeyNames="ID_Event" CssClass="table table-striped table-hover table-bordered dt-responsive nowrap" Style="border-collapse: collapse; border-spacing: 0; width: 100%;" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:ButtonField CommandName="editRecord" HeaderText="Edit" ButtonType="Link" Text='<i class="typcn typcn-edit"></i>' ItemStyle-Width="40px">
                                    <ControlStyle CssClass="btn btn-xs mauvang"></ControlStyle>
                                    <ItemStyle Width="40px" />
                                </asp:ButtonField>
                                <asp:ButtonField CommandName="deleteRecord" HeaderText="Delete" ButtonType="Link" Text='<i class="ion ion-md-trash"></i>' ItemStyle-Width="40px" ImageUrl="../img/remove.png">
                                    <ControlStyle CssClass="btn btn-xs maudo"></ControlStyle>
                                    <ItemStyle Width="40px" />
                                </asp:ButtonField>
                                <asp:BoundField DataField="ID_Event" HeaderText="ID_Event" ReadOnly="True" SortExpression="ID_Event" InsertVisible="False" />
                                <asp:BoundField DataField="ChuDe" HeaderText="ChuDe" SortExpression="ChuDe" />
                                <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                                <asp:BoundField DataField="NoiDung" HeaderText="NoiDung" SortExpression="NoiDung" />
                                <asp:BoundField DataField="NgayDang" HeaderText="NgayDang" SortExpression="NgayDang" />
                                <asp:BoundField DataField="NgayBatDau" HeaderText="NgayBatDau" SortExpression="NgayBatDau" />
                                <asp:BoundField DataField="NgayKetThuc" HeaderText="NgayKetThuc" SortExpression="NgayKetThuc" />
                                <asp:BoundField DataField="HinhAnh" HeaderText="HinhAnh" SortExpression="HinhAnh" />
                                <asp:BoundField DataField="ID_User" HeaderText="ID_User" SortExpression="ID_User" />
                            </Columns>
                        </asp:GridView>
                    </ContentTemplate>
                    <Triggers>
                    </Triggers>
                </asp:UpdatePanel>
            </div>
        </div>


        <!--Bắt đầu Thêm -->
        <div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable" role="document">
                <div class="modal-content " style="overflow-y: inherit;">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalScrollableTitle">Add</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <asp:UpdatePanel ID="upAdd" runat="server">
                        <ContentTemplate>
                            <div class="modal-body">
                                <table class="table table-responsive ">
                                    <%--([ChuDe], [MoTa], [NoiDung], [NgayDang], [NgayBatDau], [NgayKetThuc], [HinhAnh], [ID_User])--%>
                                    <tr>
                                        <td>ID: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtID_Event" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>

                                        </td>
                                    </tr>

                                    <tr>
                                        <td>Name: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtChuDe" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Description: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtMoTa" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Content: (*)</td>
                                        <td>
                                            <CKEditor:CKEditorControl ID="txtNoiDung" Height="100" runat="server"></CKEditor:CKEditorControl>
                                            <%--<asp:TextBox ID="txtNoiDung" runat="server" CssClass="form-control"></asp:TextBox>--%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Post-Date: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtNgayDang" runat="server" CssClass="form-control"></asp:TextBox>
                                            <ajaxToolkit:CalendarExtender runat="server" BehaviorID="txtNgayDang_CalendarExtender" TargetControlID="txtNgayDang" ID="txtNgayDang_CalendarExtender" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Start-Date: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtNgayBatDau" runat="server" CssClass="form-control"></asp:TextBox>
                                            <ajaxToolkit:CalendarExtender runat="server" BehaviorID="txtNgayBatDau_CalendarExtender" TargetControlID="txtNgayBatDau" ID="txtNgayBatDau_CalendarExtender" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>End-Date: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtNgayKetThuc" runat="server" CssClass="form-control"></asp:TextBox>
                                            <ajaxToolkit:CalendarExtender runat="server" BehaviorID="txtNgayKetThuc_CalendarExtender" TargetControlID="txtNgayKetThuc" ID="txtNgayKetThuc_CalendarExtender" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Picture Url: </td>
                                        <td>
                                            <div class="input-group">
                                                <asp:TextBox ID="txtHinhAnh" runat="server" CssClass="form-control"></asp:TextBox>
                                                <span class="input-group-btn">
                                                    <asp:HyperLink ID="uploadlink" runat="server" CssClass="btn btn btn-default" NavigateUrl="~/Admin/Upload.aspx" Target="_blank"><span class="glyphicon glyphicon-link"></span> Get Link</asp:HyperLink>
                                                </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>ID_User: (*)</td>
                                        <td>
                                            <asp:DropDownList ID="ddlID_User" runat="server"
                                                DataSourceID="SqlDataSource2"
                                                DataTextField="TenUser"
                                                DataValueField="ID_User" AutoPostBack="True">
                                            </asp:DropDownList>
                                    </tr>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <asp:LinkButton ID="btnAddRecord" runat="server" CssClass="btn mauxanh" OnClick="btnAddRecord_Click"><i class="ion ion-md-save"></i> Add</asp:LinkButton>
                                <button class="btn mauxam" data-dismiss="modal" aria-hidden="true"><i class="ion ion-md-remove-circle"></i></span> Close</button>
                            </div>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnAddRecord" EventName="Click" />
                        </Triggers>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
        <!--Kết thúc thêm-->


        <!--Bắt đầu Sửa -->
        <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable" role="document">
                <div class="modal-content" style="overflow-y: scroll;">
                    <div class="modal-header">
                        <h5 class="modal-title" id="editModalLabel">Edit</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <asp:UpdatePanel ID="upEdit" runat="server">
                        <ContentTemplate>
                            <div class="modal-body">
                                <table class="table table-responsive">
                                    <tr>
                                        <td>ID: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtID_Event1" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>

                                        </td>
                                    </tr>

                                    <tr>
                                        <td>Name: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtChuDe1" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Description: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtMoTa1" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Content: (*)</td>
                                        <td>
                                            <CKEditor:CKEditorControl ID="txtNoiDung1" Height="100" runat="server"></CKEditor:CKEditorControl>
                                            <%--<asp:TextBox ID="txtNoiDung1" runat="server" CssClass="form-control"></asp:TextBox>--%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Post-Date: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtNgayDang1" runat="server" CssClass="form-control"></asp:TextBox>
                                            <ajaxToolkit:CalendarExtender runat="server" BehaviorID="txtNgayDang1_CalendarExtender" TargetControlID="txtNgayDang1" ID="txtNgayDang1_CalendarExtender" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Start-Date: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtNgayBatDau1" runat="server" CssClass="form-control"></asp:TextBox>
                                            <ajaxToolkit:CalendarExtender runat="server" BehaviorID="txtNgayBatDau1_CalendarExtender" TargetControlID="txtNgayBatDau1" ID="txtNgayBatDau1_CalendarExtender" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>End-Date: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtNgayKetThuc1" runat="server" CssClass="form-control"></asp:TextBox>
                                            <ajaxToolkit:CalendarExtender runat="server" BehaviorID="txtNgayKetThuc1_CalendarExtender" TargetControlID="txtNgayKetThuc1" ID="txtNgayKetThuc1_CalendarExtender" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>

                                        </td>
                                    </tr>
                                    <tr>
                                       <td>Picture Url: </td>
                                        <td>
                                            <div class="input-group">
                                                <asp:TextBox ID="txtHinhAnh1" runat="server" CssClass="form-control"></asp:TextBox>
                                                <span class="input-group-btn">
                                                    <asp:HyperLink ID="uploadlink1" runat="server" CssClass="btn btn btn-default" NavigateUrl="~/Admin/Upload.aspx" Target="_blank"><i class="typcn typcn-link"></i> Get Link</asp:HyperLink>
                                                </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>ID_User: (*)</td>
                                        <td>
                                            <asp:DropDownList ID="ddlID_User1" runat="server"
                                                DataSourceID="SqlDataSource2"
                                                DataTextField="TenUser"
                                                DataValueField="ID_User" AutoPostBack="True">
                                            </asp:DropDownList>
                                    </tr>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <asp:Label ID="lblResult" Visible="false" runat="server"></asp:Label>
                                <asp:LinkButton ID="btnSave" runat="server" CssClass="btn mauxanh" OnClick="btnSave_Click"><i class="ion ion-md-save"></i> Update</asp:LinkButton>
                                <button class="btn mauxam" data-dismiss="modal" aria-hidden="true"><i class="ion ion-md-remove-circle"></i>Close</button>
                            </div>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="GridView1" EventName="RowCommand" />
                            <asp:AsyncPostBackTrigger ControlID="btnSave" EventName="Click" />
                        </Triggers>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
        <!-- Kết thúc sửa -->


        <!--Bắt đầu Xóa-->
        <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="deleteModalLabel">Delete</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <asp:UpdatePanel ID="upDel" runat="server">
                        <ContentTemplate>
                            <div class="modal-body">
                                Are you sure you want to delete the record?
                                    <asp:HiddenField ID="hfCode" runat="server" />
                            </div>
                            <div class="modal-footer">
                                <asp:LinkButton ID="btnDelete" runat="server" CssClass="btn maudo" OnClick="btnDelete_Click"><i class="ion ion-md-trash"></i> Delete</asp:LinkButton>
                                <button class="btn mauxam" data-dismiss="modal" aria-hidden="true"><i class="ion ion-md-remove-circle"></i>Cancel</button>
                            </div>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnDelete" EventName="Click" />
                        </Triggers>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
        <!--Kết thúc xóa -->

        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:Study4UConnectionString %>"
                SelectCommand="SELECT * FROM [tbl06_Event] ORDER BY [NgayDang] DESC, [ID_Event] DESC, [NgayBatDau] DESC"
                DeleteCommand="DELETE FROM [tbl06_Event] WHERE [ID_Event] = @ID_Event"
                InsertCommand="INSERT INTO [tbl06_Event] ([ChuDe], [MoTa], [NoiDung], [NgayDang], [NgayBatDau], [NgayKetThuc], [HinhAnh], [ID_User]) VALUES (@ChuDe, @MoTa, @NoiDung, @NgayDang, @NgayBatDau, @NgayKetThuc, @HinhAnh, @ID_User)"
                UpdateCommand="UPDATE [tbl06_Event] SET [ChuDe] = @ChuDe, [MoTa] = @MoTa, [NoiDung] = @NoiDung, [NgayDang] = @NgayDang, [NgayBatDau] = @NgayBatDau, [NgayKetThuc] = @NgayKetThuc, [HinhAnh] = @HinhAnh, [ID_User] = @ID_User WHERE [ID_Event] = @ID_Event">
                <DeleteParameters>
                    <asp:Parameter Name="ID_Event" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ChuDe" Type="String" />
                    <asp:Parameter Name="MoTa" Type="String" />
                    <asp:Parameter Name="NoiDung" Type="String" />
                    <asp:Parameter DbType="Date" Name="NgayDang" />
                    <asp:Parameter DbType="Date" Name="NgayBatDau" />
                    <asp:Parameter DbType="Date" Name="NgayKetThuc" />
                    <asp:Parameter Name="HinhAnh" Type="String" />
                    <asp:Parameter Name="ID_User" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ChuDe" Type="String" />
                    <asp:Parameter Name="MoTa" Type="String" />
                    <asp:Parameter Name="NoiDung" Type="String" />
                    <asp:Parameter Name="NgayDang" DbType="Date" />
                    <asp:Parameter DbType="Date" Name="NgayBatDau" />
                    <asp:Parameter DbType="Date" Name="NgayKetThuc" />
                    <asp:Parameter Name="HinhAnh" Type="String" />
                    <asp:Parameter Name="ID_User" Type="Int32" />
                    <asp:Parameter Name="ID_Event" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Study4UConnectionString %>" SelectCommand="SELECT * FROM [tbl05_User] ORDER BY [ID_User]"></asp:SqlDataSource>
        </div>
        <CKFinder:FileBrowser ID="FileBrowser1" Width="0" runat="server" OnLoad="FileBrowser1_Load"></CKFinder:FileBrowser>
        <CKFinder:FileBrowser ID="FileBrowser2" Width="0" runat="server" OnLoad="FileBrowser2_Load"></CKFinder:FileBrowser>
    </asp:Panel>
    <asp:Panel ID="panelThongBao" runat="server" Visible="False">
        <h4 class="alert alert-warning" role="alert">Sorry. You don't authorize to access this page. Please contact your admin.</h4>
    </asp:Panel>
    <asp:Panel ID="panelError" runat="server" Visible="True">
        <h4 class="alert alert-warning" role="alert">
            <asp:Label ID="lblError" runat="server" Text=""></asp:Label></h4>
    </asp:Panel>
</asp:Content>
