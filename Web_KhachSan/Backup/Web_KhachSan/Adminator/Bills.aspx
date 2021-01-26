<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin_page.Master"
    AutoEventWireup="true" CodeBehind="Bills.aspx.cs" Inherits="Web_KhachSan.Adminator.Bills" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Adminator | Hóa đơn
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Nameofpage" runat="server">
    Hóa Đơn
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
    <asp:ScriptManager ID="scr1" runat="server">
    </asp:ScriptManager>
    <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#ListBills">
        Danh sách hóa đơn</button>
    <div class="msg-area">
        <asp:Label ID="msgLB" runat="server" />
    </div>
    <div class="content-area">
        <div id="ListBills" class="collapse in">
            <div class="title-room">
                Danh sách hóa đơn</div>
            <asp:GridView ID="grvListBill" runat="server" AutoGenerateColumns="false" CssClass="table table-striped"
                CellPadding="4" ForeColor="#333333" GridLines="none">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="STT" ReadOnly="true" />
                    <asp:BoundField DataField="date_created" HeaderText="Ngày tạo" />
                    <asp:BoundField DataField="room_price" HeaderText="Giá phòng" />
                    <asp:BoundField DataField="services_price" HeaderText="Giá dịch vụ" />
                    <asp:BoundField DataField="total_price" HeaderText="Tổng giá" />
                    <asp:TemplateField HeaderText="Xóa">
                        <ItemTemplate>
                            <asp:Button ID="btnXoa" CssClass="btn btn-danger" runat="server" Text="Xóa" OnCommand="Xoa_Click"
                                CommandArgument='<%#Bind("id") %>' CommandName="xoa" OnClientClick="return confirm('Bạn có chắc chắn muốn xóa?')" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
