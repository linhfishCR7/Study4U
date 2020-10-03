<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="Study4U.Admin.Upload" %>

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
                UPLOAD PICTURE
            </div>
            <div class="list-group-item">
                <asp:UpdatePanel ID="upCrudGrid" runat="server">
                    <ContentTemplate>
                        <table class="table table-responsive">
                            <tr>
                                <td>
                                    <input type="text" name="n_thumb_url" id="n_thumb_url" class="form-control" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="input-group">
                                        <button id="n_browseServer" type="button" class="btn mauxanh">
                                            <i class=" typcn typcn-upload"></i> Upload
                                        </button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                    <Triggers>
                    </Triggers>
                </asp:UpdatePanel>
            </div>
        </div>
        <script>
            function SetFileField(fileUrl) {
                jQuery('#n_thumb_url').val(fileUrl);
            }
            $("#n_browseServer").on("click", function () {
                var finder = new CKFinder();
                finder.basePath = '/ckfinder/';
                finder.selectActionFunction = SetFileField;
                finder.popup();
            });
        </script>
    </asp:Panel>

    <asp:Panel ID="panelThongBao" runat="server" Visible="False">
        <h4 class="alert alert-warning" role="alert">Sorry. You don't authorize to access this page. Please contact your admin.</h4>
    </asp:Panel>
    <asp:Panel ID="panelError" runat="server" Visible="True">
        <h4 class="alert alert-warning" role="alert">
            <asp:Label ID="lblError" runat="server" Text=""></asp:Label></h4>
    </asp:Panel>
</asp:Content>
