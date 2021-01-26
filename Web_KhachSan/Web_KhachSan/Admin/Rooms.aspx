<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin_page.Master" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs" Inherits="Web_KhachSan.Adminator.Rooms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Adminator | Quản lý phòng
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Nameofpage" runat="server">
    Quản lý phòng
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
<asp:ScriptManager ID="scr1" runat="server"></asp:ScriptManager>
  <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#ListRooms">Danh sách phòng</button>
  <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#InsertRooms">Thêm phòng</button>
  <div class="msg-area">
    <asp:Label ID="msgLB" runat="server" />
  </div>
  <div class="content-area">
    <div id="InsertRooms" class="collapse">
        <div class="f-insert">
            <div class="title-room">Thêm phòng</div>
            <div class="row">
                <div class="col-lg-3">
                    <div class="form-group">
                        <label for="first">ID phòng</label>
                        <asp:TextBox ID="txtId" runat="server" CssClass="form-control" />
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="form-group">
                        <label for="first">Tên phòng</label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="form-group">
                        <label for="first">Loại phòng</label>
                        <asp:DropDownList runat="server" ID="ddlKind" CssClass="form-control" />
                    </div>
                </div>
                 <div class="col-lg-3">
                    <div class="form-group">
                        <label for="first">Giá</label>
                        <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3">
                    <div class="form-group">
                        <label for="first">Còn trống</label>
                        <asp:DropDownList runat="server" ID="ddlAvailable" CssClass="form-control" />
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="form-group">
                        <label for="first">Mô tả</label>
                        <asp:TextBox ID="txtStatus" runat="server" CssClass="form-control" />
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="form-group">
                        <label for="first">Ảnh</label>
                        <asp:FileUpload ID="fileuploadImg" runat="server" CssClass="form-control"/>
                    </div>
                </div>
            </div>
            <asp:Button runat="server" ID="btnInsertRoom" CssClass="btn btnsm btn-primary"
                Text="Thêm Phòng" onclick="btnInsertRoom_Click"/>
        </div>
    </div>
    <div id="UpdateRooms" class="collapse">
        <div class="f-insert">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="title-room">Cập nhật phòng</div>
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="form-group">
                                <label for="first">ID phòng</label>
                                <asp:TextBox ID="txtIdUpdate" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="form-group">
                                <label for="first">Tên phòng</label>
                                <asp:TextBox ID="txtNameUpdate" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="form-group">
                                <label for="first">Loại phòng</label>
                                <asp:DropDownList runat="server" ID="ddlKindUpdate" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="form-group">
                                <label for="first">Giá</label>
                                <asp:TextBox ID="txtPriceUpdate" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="form-group">
                                <label for="first">Còn trống</label>
                                <asp:DropDownList runat="server" ID="ddlAvailableUpdate" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="form-group">
                                <label for="first">Mô tả</label>
                                <asp:TextBox ID="txtStatusUpdate" runat="server" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="form-group">
                                <label for="first">Ảnh</label>
                                <asp:FileUpload ID="fileuploadImgUpdate" runat="server" CssClass="form-control"/>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="form-group">
                                <asp:TextBox ID="txtTemp" runat="server" CssClass="form-control" Visible="false"/>
                            </div>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:Button runat="server" ID="btnUpdate" CssClass="btn btnsm btn-primary" Text="Cập Nhật" onclick="btnUpdate_Click"/>
            <button type="button" class="btn btnsm btn-primary" data-toggle="collapse" data-target="#UpdateRooms">Đóng</button>
        </div>
    </div>
    <div id="ListRooms" class="collapse in">
        <div class="title-room">Danh sách phòng</div>
        <asp:GridView ID="grvListRooms" runat="server" AutoGenerateColumns="false" CssClass="table table-striped" CellPadding="4" ForeColor="#333333" GridLines="none">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Mã phòng" ReadOnly="true"/>
            <asp:BoundField DataField="name" HeaderText="Tên Phòng" ReadOnly="true"/>
            <asp:BoundField DataField="kind" HeaderText="Loại Phòng" />
            <asp:BoundField DataField="price" HeaderText="Giá" />
            <asp:BoundField DataField="available" HeaderText="Còn Trống" />
            <asp:BoundField DataField="img" HeaderText="Ảnh" />
            <asp:BoundField DataField="room_status" HeaderText="Mô Tả" />
            <asp:TemplateField HeaderText="Xóa">
                <ItemTemplate>
                    <asp:Button ID="btnXoa" CssClass="btn btn-danger" CommandName="xoa" CommandArgument='<%# Bind("id") %>' OnCommand="Xoa_Click" runat="server" Text="Xóa" OnClientClick="return confirm('Bạn có chắc chắn muốn xóa?')"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sửa">
                <ItemTemplate>
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <asp:Button ID="btnSua" CssClass="btn btn-warning" CommandName="sua" CommandArgument='<%# Bind("id") %>' OnCommand="Sua_Click" runat="server" Text="Sửa" data-toggle="collapse" data-target="#UpdateRooms"/>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        </asp:GridView>
    </div>
  </div>
</asp:Content>
