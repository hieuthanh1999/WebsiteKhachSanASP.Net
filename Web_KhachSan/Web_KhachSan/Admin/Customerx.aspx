<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin_page.Master" AutoEventWireup="true" CodeBehind="Customerx.aspx.cs" Inherits="Web_KhachSan.Admin.Customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
        Adminator | Đang đặt
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Nameofpage" runat="server">
    Khách Hàng
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
     <asp:ScriptManager ID="scr1" runat="server">
    </asp:ScriptManager>
    <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#ListBills">
        Danh sách khách hàng</button>
    <div class="msg-area">
        <asp:Label ID="msgLB" runat="server" />
    </div>
    <div class="content-area">
        <div id="ListBills" class="collapse in">
            <div class="title-room">
                Danh sách hóa đơn</div>
            <asp:GridView ID="grvListCus" runat="server" AutoGenerateColumns="false" CssClass="table table-striped"
                CellPadding="4" ForeColor="#333333" GridLines="none">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="STT" ReadOnly="true" />
                    <asp:BoundField DataField="name" HeaderText="Tên" />
                     <asp:BoundField DataField="email" HeaderText="Email" />
                    <asp:BoundField DataField="phone" HeaderText="Số điện thoại" />
                     <asp:BoundField DataField="credit_Name" HeaderText="Tên thẻ" />
                    <asp:BoundField DataField="credit_Number" HeaderText="Số thẻ" />
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
