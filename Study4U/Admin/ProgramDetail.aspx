<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="ProgramDetail.aspx.cs" Inherits="Study4U.Admin.ProgramDetail" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Namespace="CKEditor.NET" Assembly="CKEditor.NET" TagPrefix="CKEditor" %>
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
                            DataKeyNames="ID_CTCT" CssClass="table table-striped table-responsive table-hover table-bordered dt-responsive nowrap" Style="border-collapse: collapse; border-spacing: 0; width: 100%;" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:ButtonField CommandName="editRecord" HeaderText="Edit" ButtonType="Link" Text='<i class="typcn typcn-edit"></i>' ItemStyle-Width="40px">
                                    <ControlStyle CssClass="btn btn-xs mauvang"></ControlStyle>
                                    <ItemStyle Width="40px" />
                                </asp:ButtonField>
                                <asp:ButtonField CommandName="deleteRecord" HeaderText="Delete" ButtonType="Link" Text='<i class="ion ion-md-trash"></i>' ItemStyle-Width="40px" ImageUrl="../img/remove.png">
                                    <ControlStyle CssClass="btn btn-xs maudo"></ControlStyle>
                                    <ItemStyle Width="40px" />
                                </asp:ButtonField>
                                <asp:BoundField DataField="ID_CTCT" HeaderText="ID_CTCT" ReadOnly="True" SortExpression="ID_CTCT" InsertVisible="False" />
                                <asp:BoundField DataField="ChuDe" HeaderText="ChuDe" SortExpression="ChuDe" />
                                <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                                <asp:BoundField DataField="NoiDung" HeaderText="NoiDung" SortExpression="NoiDung" />
                                <asp:BoundField DataField="Video" HeaderText="Video" SortExpression="Video" />
                                <asp:BoundField DataField="HinhAnh" HeaderText="HinhAnh" SortExpression="HinhAnh" />
                                <asp:BoundField DataField="FileDinhKem" HeaderText="FileDinhKem" SortExpression="FileDinhKem" />
                                <asp:BoundField DataField="ID_CT" HeaderText="ID_CT" SortExpression="ID_CT" />
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
                                    <%--([ChuDe], [MoTa], [NoiDung], [Video], [HinhAnh], [FileDinhKem], [ID_CT]) --%>
                                    <tr>
                                        <td>ID: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtID_CTCT" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>

                                        </td>
                                    </tr>

                                    <tr>
                                        <td>Title: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtChuDe" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Description: (*)</td>
                                        <td>
                                            <CKEditor:CKEditorControl ID="txtMoTa" Height="100" runat="server"></CKEditor:CKEditorControl>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Content: (*)</td>
                                        <td>
                                            <CKEditor:CKEditorControl ID="txtNoiDung" Height="100" runat="server"></CKEditor:CKEditorControl>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Video Url: </td>
                                        <td>
                                            <div class="input-group">
                                                <asp:TextBox ID="txtVideo" runat="server" CssClass="form-control"></asp:TextBox>
                                                <span class="input-group-btn">
                                                    <asp:HyperLink ID="uploadlink1" runat="server" CssClass="btn btn btn-default" NavigateUrl="~/Admin/Upload.aspx" Target="_blank"><span class="glyphicon glyphicon-link"></span> Get Link</asp:HyperLink>
                                                </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Picture Url: </td>
                                        <td>
                                            <div class="input-group">
                                                <asp:TextBox ID="txtHinhAnh" runat="server" CssClass="form-control"></asp:TextBox>
                                                <span class="input-group-btn">
                                                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn btn-default" NavigateUrl="~/Admin/Upload.aspx" Target="_blank"><span class="glyphicon glyphicon-link"></span> Get Link</asp:HyperLink>
                                                </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>File Url: </td>
                                        <td>
                                            <div class="input-group">
                                                <asp:TextBox ID="txtFileDinhKem" runat="server" CssClass="form-control"></asp:TextBox>
                                                <span class="input-group-btn">
                                                    <asp:HyperLink ID="uploadlink3" runat="server" CssClass="btn btn btn-default" NavigateUrl="~/Admin/Upload.aspx" Target="_blank"><span class="glyphicon glyphicon-link"></span> Get Link</asp:HyperLink>
                                                </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>ID_Program: (*)</td>
                                        <td>
                                            <asp:DropDownList ID="ddlID_CT" runat="server"
                                                DataSourceID="SqlDataSource2"
                                                DataTextField="TenCT"
                                                DataValueField="ID_CT" AutoPostBack="True">
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
                                            <asp:TextBox ID="txtID_CTCT1" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>

                                        </td>
                                    </tr>

                                    <tr>
                                        <td>Title: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtChuDe1" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Description: (*)</td>
                                        <td>
                                            <CKEditor:CKEditorControl ID="txtMoTa1" Height="100" runat="server"></CKEditor:CKEditorControl>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Content: (*)</td>
                                        <td>
                                            <CKEditor:CKEditorControl ID="txtNoiDung1" Height="100" runat="server"></CKEditor:CKEditorControl>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Video Url: </td>
                                        <td>
                                            <div class="input-group">
                                                <asp:TextBox ID="txtVideo1" runat="server" CssClass="form-control"></asp:TextBox>
                                                <span class="input-group-btn">
                                                    <asp:HyperLink ID="uploadlink2" runat="server" CssClass="btn btn btn-default" NavigateUrl="~/Admin/Upload.aspx" Target="_blank"><span class="glyphicon glyphicon-link"></span> Get Link</asp:HyperLink>
                                                </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Picture Url: </td>
                                        <td>
                                            <div class="input-group">
                                                <asp:TextBox ID="txtHinhAnh1" runat="server" CssClass="form-control"></asp:TextBox>
                                                <span class="input-group-btn">
                                                    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="btn btn btn-default" NavigateUrl="~/Admin/Upload.aspx" Target="_blank"><span class="glyphicon glyphicon-link"></span> Get Link</asp:HyperLink>
                                                </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>File Url: </td>
                                        <td>
                                            <div class="input-group">
                                                <asp:TextBox ID="txtFileDinhKem1" runat="server" CssClass="form-control"></asp:TextBox>
                                                <span class="input-group-btn">
                                                    <asp:HyperLink ID="uploadlink4" runat="server" CssClass="btn btn btn-default" NavigateUrl="~/Admin/Upload.aspx" Target="_blank"><span class="glyphicon glyphicon-link"></span> Get Link</asp:HyperLink>
                                                </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>ID_Program: (*)</td>
                                        <td>
                                            <asp:DropDownList ID="ddlID_CT1" runat="server"
                                                DataSourceID="SqlDataSource2"
                                                DataTextField="TenCT"
                                                DataValueField="ID_CT" AutoPostBack="True">
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
                SelectCommand="SELECT * FROM [tbl03_ChiTietChuongTrinh] ORDER BY [ID_CTCT] DESC"
                DeleteCommand="DELETE FROM [tbl03_ChiTietChuongTrinh] WHERE [ID_CTCT] = @ID_CTCT"
                InsertCommand="INSERT INTO [tbl03_ChiTietChuongTrinh] ([ChuDe], [MoTa], [NoiDung], [Video], [HinhAnh], [FileDinhKem], [ID_CT]) VALUES (@ChuDe, @MoTa, @NoiDung, @Video, @HinhAnh, @FileDinhKem, @ID_CT)"
                UpdateCommand="UPDATE [tbl03_ChiTietChuongTrinh] SET [ChuDe] = @ChuDe, [MoTa] = @MoTa, [NoiDung] = @NoiDung, [Video] = @Video, [HinhAnh] = @HinhAnh, [FileDinhKem] = @FileDinhKem, [ID_CT] = @ID_CT WHERE [ID_CTCT] = @ID_CTCT">
                <DeleteParameters>
                    <asp:Parameter Name="ID_CTCT" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ChuDe" Type="String" />
                    <asp:Parameter Name="MoTa" Type="String" />
                    <asp:Parameter Name="NoiDung" Type="String" />
                    <asp:Parameter Name="Video" Type="String" />
                    <asp:Parameter Name="HinhAnh" Type="String" />
                    <asp:Parameter Name="FileDinhKem" Type="String" />
                    <asp:Parameter Name="ID_CT" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ChuDe" Type="String" />
                    <asp:Parameter Name="MoTa" Type="String" />
                    <asp:Parameter Name="NoiDung" Type="String" />
                    <asp:Parameter Name="Video" Type="String" />
                    <asp:Parameter Name="HinhAnh" Type="String" />
                    <asp:Parameter Name="FileDinhKem" Type="String" />
                    <asp:Parameter Name="ID_CT" Type="Int32" />
                    <asp:Parameter Name="ID_CTCT" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Study4UConnectionString %>" SelectCommand="SELECT [ID_CT], [TenCT] FROM [tbl02_ChuongTrinh]"></asp:SqlDataSource>

        </div>
        <CKFinder:FileBrowser ID="FileBrowser1" Width="0" runat="server" OnLoad="FileBrowser1_Load"></CKFinder:FileBrowser>
        <CKFinder:FileBrowser ID="FileBrowser2" Width="0" runat="server" OnLoad="FileBrowser2_Load"></CKFinder:FileBrowser>
         <CKFinder:FileBrowser ID="FileBrowser3" Width="0" runat="server" OnLoad="FileBrowser3_Load"></CKFinder:FileBrowser>
        <CKFinder:FileBrowser ID="FileBrowser4" Width="0" runat="server" OnLoad="FileBrowser4_Load"></CKFinder:FileBrowser>

    </asp:Panel>
    <asp:Panel ID="panelThongBao" runat="server" Visible="False">
        <h4 class="alert alert-warning" role="alert">Sorry. You don't authorize to access this page. Please contact your admin.</h4>
    </asp:Panel>
    <asp:Panel ID="panelError" runat="server" Visible="True">
        <h4 class="alert alert-warning" role="alert">
            <asp:Label ID="lblError" runat="server" Text=""></asp:Label></h4>
    </asp:Panel>
</asp:Content>
