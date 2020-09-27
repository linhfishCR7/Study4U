<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="Study4U.Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <asp:Panel ID="Panel1" runat="server">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ID_QG" >
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>
                <ItemTemplate>
                    <span class="col-md-4 col-sm-6 col-xs-12">
                        <a href="/LoginSystem">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("HinhAnhQG") %>' Width="100%" /></a>
                        <br />
                        <br />
                        Project Name:
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenQG") %>' />
                        <br />
                        Service:
                        <asp:Label ID="TenDichVuLabel" runat="server" Text='<%# Eval("MoTa") %>' />

                    </span>
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
            SelectCommand="SELECT * FROM [tbl01_QuocGia] ORDER BY [ID_QG]" DeleteCommand="DELETE FROM [tbl01_QuocGia] WHERE [ID_QG] = @ID_QG" InsertCommand="INSERT INTO [tbl01_QuocGia] ([TenQG], [MoTa], [HinhAnhQG]) VALUES (@TenQG, @MoTa, @HinhAnhQG)" UpdateCommand="UPDATE [tbl01_QuocGia] SET [TenQG] = @TenQG, [MoTa] = @MoTa, [HinhAnhQG] = @HinhAnhQG WHERE [ID_QG] = @ID_QG">
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
</asp:Content>
