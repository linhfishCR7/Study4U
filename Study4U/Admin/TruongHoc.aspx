<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="TruongHoc.aspx.cs" Inherits="Study4U.Admin.TruongHoc" %>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
    </style>
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="panelPhanQuyen" runat="server">
        <div class="list-group">
            <div class="list-group-item maudo">
                UPDATE SCHOOL
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
                            DataKeyNames="ID_Truong" CssClass="table table-striped table-hover table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;" DataSourceID="SqlDataSource1">
                            <Columns>
                                 <asp:ButtonField CommandName="editRecord" HeaderText="Edit" ButtonType="Link" Text='<i class="typcn typcn-edit"></i>' ItemStyle-Width="40px">
                                    <ControlStyle CssClass="btn btn-xs mauvang"></ControlStyle>
                                    <ItemStyle Width="40px" />
                                </asp:ButtonField>
                                <asp:ButtonField CommandName="deleteRecord" HeaderText="Delete" ButtonType="Link" Text='<i class="ion ion-md-trash"></i>' ItemStyle-Width="40px" ImageUrl="../img/remove.png">
                                    <ControlStyle CssClass="btn btn-xs maudo"></ControlStyle>
                                    <ItemStyle Width="40px" />
                                </asp:ButtonField>
                                <asp:BoundField DataField="ID_Truong" HeaderText="ID_Truong" ReadOnly="True" SortExpression="ID_Truong" InsertVisible="False" />
                                <asp:BoundField DataField="TenTruong" HeaderText="TenTruong" SortExpression="TenTruong" />
                                <asp:BoundField DataField="HinhAnh" HeaderText="HinhAnh" SortExpression="HinhAnh" />
                                <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                                <asp:BoundField DataField="NoiDung" HeaderText="NoiDung" SortExpression="NoiDung" />
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
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalScrollableTitle">Add</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <asp:UpdatePanel ID="upAdd" runat="server">
                        <ContentTemplate>
                            <div class="modal-body">
                                <table class="table table-responsive">
                                    <%--([TenTruong], [HinhAnh], [MoTa], [NoiDung], [ID_CT])  --%>
                                    <tr>
                                        <td>ID: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtID_Truong" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>

                                        </td>
                                    </tr>

                                    <tr>
                                        <td>Name: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtTenTruong" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Url: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtHinhAnh" runat="server" CssClass="form-control"></asp:TextBox>
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
                                            <asp:TextBox ID="txtNoiDung" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Program-ID: (*)</td>
                                        <td>
                                            <asp:DropDownList ID="ddlID_CT" runat="server" 
                                                DataSourceID="SqlDataSource2"
                                                DataTextField="Program"
                                                DataValueField="ID_CT" AutoPostBack="True">
                                            </asp:DropDownList>
                                        </td>
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
                <div class="modal-content">
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
                                            <asp:TextBox ID="txtID_Truong1" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>

                                        </td>
                                    </tr>

                                    <tr>
                                        <td>Name: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtTenTruong1" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Url: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtHinhAnh1" runat="server" CssClass="form-control"></asp:TextBox>
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
                                            <asp:TextBox ID="txtNoiDung1" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Program-ID: (*)</td>
                                        <td>
                                            <asp:DropDownList ID="ddlID_CT1" runat="server" 
                                                DataSourceID="SqlDataSource2"
                                                DataTextField="Program"
                                                DataValueField="ID_CT" AutoPostBack="True">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                             <div class="modal-footer">
                                <asp:Label ID="lblResult" Visible="false" runat="server"></asp:Label>
                                <asp:LinkButton ID="btnSave" runat="server" CssClass="btn mauxanh" OnClick="btnSave_Click"><i class="ion ion-md-save"></i> Update</asp:LinkButton>
                                <button class="btn mauxam" data-dismiss="modal" aria-hidden="true"><i class="ion ion-md-remove-circle"></i> Close</button>
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
                                <button class="btn mauxam" data-dismiss="modal" aria-hidden="true"><i class="ion ion-md-remove-circle"></i> Cancel</button>
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
                SelectCommand="SELECT * FROM [tbl04_TruongHoc] ORDER BY [ID_Truong] DESC"
                DeleteCommand="DELETE FROM [tbl04_TruongHoc] WHERE [ID_Truong] = @ID_Truong"
                InsertCommand="INSERT INTO [tbl04_TruongHoc] ([TenTruong], [HinhAnh], [MoTa], [NoiDung], [ID_CT]) VALUES (@TenTruong, @HinhAnh, @MoTa, @NoiDung, @ID_CT)"
                UpdateCommand="UPDATE [tbl04_TruongHoc] SET [TenTruong] = @TenTruong, [HinhAnh] = @HinhAnh, [MoTa] = @MoTa, [NoiDung] = @NoiDung, [ID_CT] = @ID_CT WHERE [ID_Truong] = @ID_Truong">
                <DeleteParameters>
                    <asp:Parameter Name="ID_Truong" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TenTruong" Type="String" />
                    <asp:Parameter Name="HinhAnh" Type="String" />
                    <asp:Parameter Name="MoTa" Type="String" />
                    <asp:Parameter Name="NoiDung" Type="String" />
                    <asp:Parameter Name="ID_CT" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenTruong" Type="String" />
                    <asp:Parameter Name="HinhAnh" Type="String" />
                    <asp:Parameter Name="MoTa" Type="String" />
                    <asp:Parameter Name="NoiDung" Type="String" />
                    <asp:Parameter Name="ID_CT" Type="Int32" />
                    <asp:Parameter Name="ID_Truong" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Study4UConnectionString %>" SelectCommand="SELECT tbl02_ChuongTrinh.ID_CT, tbl01_QuocGia.TenQG + '-' + tbl02_ChuongTrinh.TenCT AS Program FROM tbl02_ChuongTrinh INNER JOIN tbl01_QuocGia ON tbl02_ChuongTrinh.ID_QG = tbl01_QuocGia.ID_QG ORDER BY tbl02_ChuongTrinh.ID_CT DESC"></asp:SqlDataSource>

        </div>
    </asp:Panel>
    <asp:Panel ID="panelThongBao" runat="server" Visible="False">
        <h4 class="alert alert-warning" role="alert">Sorry. You don't authorize to access this page. Please contact your admin.</h4>
    </asp:Panel>
    <asp:Panel ID="panelError" runat="server" Visible="True">
        <h4 class="alert alert-warning" role="alert">
            <asp:Label ID="lblError" runat="server" Text=""></asp:Label></h4>
    </asp:Panel>
</asp:Content>