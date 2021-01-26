<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin_page.Master"
    AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="Web_KhachSan.Adminator.Service1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Adminator | Quản lý dịch vụ
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Nameofpage" runat="server">
    Quản lý dịch vụ
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
    <asp:ScriptManager ID="scr1" runat="server">
    </asp:ScriptManager>
    <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#ListServices">
        Danh sách dịch vụ</button>
    <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#InsertServices">
        Thêm dịch vụ</button>
    <div class="msg-area">
        <asp:Label ID="msgLB" runat="server" />
    </div>
    <div class="content-area">
        <div id="InsertServices" class="collapse">
            <div class="f-insert">
                <div class="title-service">
                    Thêm dịch vụ</div>
                <div class="row">
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label for="first">
                                ID dịch vụ</label>
                            <asp:TextBox ID="txtId" runat="server" CssClass="form-control" />
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label for="first">
                                Tên dịch vụ</label>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label for="first">
                                Giá</label>
                            <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label for="first">
                                Mô tả</label>
                            <asp:TextBox ID="txtStatus" runat="server" CssClass="form-control" />
                        </div>
                    </div>
                </div>
                <asp:Button runat="server" ID="btnInsertService" CssClass="btn btnsm btn-primary"
                    Text="Thêm Dịch Vụ" OnClick="btnInsertService_Click" />
            </div>
        </div>
        <div id="UpdateServices" class="collapse">
            <div class="f-insert">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <div class="title-service">
                            Cập nhật dịch vụ</div>
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label for="first">
                                        ID dịch vụ</label>
                                    <asp:TextBox ID="txtIdUpdate" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label for="first">
                                        Tên dịch vụ</label>
                                    <asp:TextBox ID="txtNameUpdate" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label for="first">
                                        Giá</label>
                                    <asp:TextBox ID="txtPriceUpdate" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="form-group">
                                    <label for="first">
                                        Mô tả</label>
                                    <asp:TextBox ID="txtStatusUpdate" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="form-group">
                                    <asp:TextBox ID="txtTemp" runat="server" CssClass="form-control" Visible="false" />
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:Button runat="server" ID="btnUpdate1" CssClass="btn btnsm btn-primary" Text="Cập Nhật"
                    OnClick="btnUpdate1_Click" />
                <button type="button" class="btn btnsm btn-primary" data-toggle="collapse" data-target="#UpdateServices">
                    Đóng</button>
            </div>
        </div>
        <div id="ListServices" class="collapse in">
            <div class="title-service">
                Danh sách dịch vụ</div>
            <asp:GridView ID="grvListServices" runat="server" AutoGenerateColumns="false" CssClass="table table-striped"
                CellPadding="4" ForeColor="#333333" GridLines="none">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="Mã Dịch Vụ" ReadOnly="true" />
                    <asp:BoundField DataField="name" HeaderText="Tên Dịch Vụ" ReadOnly="true" />
                    <asp:BoundField DataField="price" HeaderText="Giá" />
                    <asp:BoundField DataField="service_status" HeaderText="Mô Tả" />
                    <asp:TemplateField HeaderText="Xóa">
                        <ItemTemplate>
                            <asp:Button ID="btnXoa1" CssClass="btn btn-danger" CommandName="xoa" CommandArgument='<%#Bind("id") %>'
                                OnCommand="Xoa_Click" runat="server" Text="Xóa" OnClientClick="return confirm('Bạn có chắc chắn muốn xóa?')" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Sửa">
                        <ItemTemplate>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:Button ID="btnSua1" CssClass="btn btn-warning" CommandName="sua" CommandArgument='<%#Bind("id") %>'
                                        OnCommand="Sua_Click" runat="server" Text="Sửa" data-toggle="collapse" data-target="#UpdateServices" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
