﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="QuocGia.aspx.cs" Inherits="Study4U.Admin.QuocGia" %>



<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
    </style>
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="panelPhanQuyen" runat="server">
        <div class="list-group">
            <div class="list-group-item maudo">
                UPDATE COUNTRY
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
                            DataKeyNames="ID_QG" CssClass="table table-striped table-hover table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:ButtonField CommandName="editRecord" HeaderText="Edit" ButtonType="Link" Text='<i class="typcn typcn-edit"></i>' ItemStyle-Width="40px">
                                    <ControlStyle CssClass="btn btn-xs mauvang"></ControlStyle>
                                    <ItemStyle Width="40px" />
                                </asp:ButtonField>
                                <asp:ButtonField CommandName="deleteRecord" HeaderText="Delete" ButtonType="Link" Text='<i class="ion ion-md-trash"></i>' ItemStyle-Width="40px" ImageUrl="../img/remove.png">
                                    <ControlStyle CssClass="btn btn-xs maudo"></ControlStyle>
                                    <ItemStyle Width="40px" />
                                </asp:ButtonField>
                                <asp:BoundField DataField="ID_QG" HeaderText="ID_QG" ReadOnly="True" SortExpression="ID_QG" InsertVisible="False" />
                                <asp:BoundField DataField="TenQG" HeaderText="TenQG" SortExpression="TenQG" />
                                <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                                <asp:BoundField DataField="HinhAnhQG" HeaderText="HinhAnhQG" SortExpression="HinhAnhQG" />
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
                                    <%--([TenQG], [MoTa], [HinhAnhQG]) --%>
                                    <tr>
                                        <td>ID: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtID_QG" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>

                                        </td>
                                    </tr>

                                    <tr>
                                        <td>Name: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtTenQG" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Description: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtMoTa" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Url: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtHinhAnhQG" runat="server" CssClass="form-control"></asp:TextBox>
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
                                            <asp:TextBox ID="txtID_QG1" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>

                                        </td>
                                    </tr>

                                    <tr>
                                        <td>Name: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtTenQG1" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Description: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtMoTa1" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Url: (*)</td>
                                        <td>
                                            <asp:TextBox ID="txtHinhAnhQG1" runat="server" CssClass="form-control"></asp:TextBox>
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
                SelectCommand="SELECT * FROM [tbl01_QuocGia] ORDER BY [ID_QG] DESC"
                DeleteCommand="DELETE FROM [tbl01_QuocGia] WHERE [ID_QG] = @ID_QG"
                InsertCommand="INSERT INTO [tbl01_QuocGia] ([TenQG], [MoTa], [HinhAnhQG]) VALUES (@TenQG, @MoTa, @HinhAnhQG)"
                UpdateCommand="UPDATE [tbl01_QuocGia] SET [TenQG] = @TenQG, [MoTa] = @MoTa, [HinhAnhQG] = @HinhAnhQG WHERE [ID_QG] = @ID_QG">
                <DeleteParameters>
                    <asp:Parameter Name="ID_QG" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TenQG" Type="String" />
                    <asp:Parameter Name="MoTa" Type="String" />
                    <asp:Parameter Name="HinhAnhQG" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenQG" Type="String" />
                    <asp:Parameter Name="MoTa" Type="String" />
                    <asp:Parameter Name="HinhAnhQG" Type="String" />
                    <asp:Parameter Name="ID_QG" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
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