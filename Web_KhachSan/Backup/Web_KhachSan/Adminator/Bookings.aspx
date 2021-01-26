<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin_page.Master"
    AutoEventWireup="true" CodeBehind="Bookings.aspx.cs" Inherits="Web_KhachSan.Adminator.Bookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Adminator | Đang đặt
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Nameofpage" runat="server">
    Phòng đang đặt
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
    <asp:ScriptManager ID="scr1" runat="server">
    </asp:ScriptManager>
    <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#ListBooking">
        Danh sách phòng đang đặt</button>
    <div class="msg-area">
        <asp:Label ID="msgLB" runat="server" />
    </div>
    <div class="content-area">
        <div id="ListBooking" class="collapse in">
            <div class="title-room">
                Danh sách phòng</div>
            <asp:GridView ID="grdBooking" runat="server" AutoGenerateColumns="False" CssClass="table table-striped"
                CellPadding="4" ForeColor="#333333" GridLines="None">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="true" />
                    <asp:BoundField DataField="id_Room" HeaderText="ID phòng" />
                    <asp:BoundField DataField="id_Customer" HeaderText="ID khách hàng" />
                    <asp:BoundField DataField="id_Bill" HeaderText="ID hóa đơn" />
                    <asp:BoundField DataField="checkin_date" HeaderText="Ngày vào" />
                    <asp:BoundField DataField="checkout_date" HeaderText="Ngày ra" />
                    <asp:TemplateField HeaderText="Xóa">
                        <ItemTemplate>
                            <asp:Button ID="btnXoa" runat="server" CssClass="btn btn-danger" OnCommand="btnXoa_Command"
                                CommandName="xoa" CommandArgument='<%#Bind("id") %>' Text="Xóa" OnClientClick="return confirm('Bán có muốn xóa không?')" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
