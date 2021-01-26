<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin_page.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="Web_KhachSan.Admin.search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Nameofpage" runat="server">
    Tìm Kiếm khách hàng
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
   <div id="InsertRooms">
        <div class="f-insert">
            <div class="row">
                <div class="col-lg-3">
                    <div class="form-group">
                         <label for="first">Nhập Tên</label>
                        <asp:TextBox ID="txtname" runat="server" CssClass="form-control" />
                        <asp:Label ID="txterr" runat="server"></asp:Label>
                    </div>
                </div>
                  
                </div>
              <div class="row">
                 <div class="col-lg-12">
                     <div class="form-group">
               
                         <asp:Button ID="Button1" CssClass="btn btnsm btn-primary" runat="server" OnClick="Button1_Click" Text="Tìm Kiếm" />
                         </div>
                </div> 
                  </div>
               
             
               <%-- --%>
        
    </div>
    </div>
      <div id="ListBills">
            <div class="title-room">
                Danh sách khách hàng</div>
            <asp:GridView ID="grvListCus" runat="server" AutoGenerateColumns="false" CssClass="table table-striped"
                CellPadding="4" ForeColor="#333333" GridLines="none">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="STT" ReadOnly="true" />
                    <asp:BoundField DataField="name" HeaderText="Tên" />
                     <asp:BoundField DataField="email" HeaderText="Email" />
                    <asp:BoundField DataField="phone" HeaderText="Số điện thoại" />
                     <asp:BoundField DataField="credit_Name" HeaderText="Tên thẻ" />
                    <asp:BoundField DataField="credit_Number" HeaderText="Số thẻ" />
                  <asp:TemplateField HeaderText="Xem Phòng Đặt">
                <ItemTemplate>
                    <asp:Button ID="btnXem" CssClass="btn btn-danger" CommandName="xem" CommandArgument='<%# Bind("id") %>' OnCommand="Xem_Click" runat="server" Text="Xem" />

                 </ItemTemplate>
            </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
     <div id="ListBills">
            <div class="title-room">
                Danh sách Phòng đã đặt của khách hàng</div>
     <asp:GridView ID="grdBooking" runat="server" AutoGenerateColumns="False" CssClass="table table-striped"
                CellPadding="4" ForeColor="#333333" GridLines="None">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="true" />
                    <asp:BoundField DataField="id_Room" HeaderText="ID phòng" />
                    <asp:BoundField DataField="id_Customer" HeaderText="ID khách hàng" />
                    <asp:BoundField DataField="id_Bill" HeaderText="ID hóa đơn" />
                     <asp:BoundField DataField="count_people" HeaderText="Số người" />
                    <asp:BoundField DataField="count_room" HeaderText="số phòng" />
                    <asp:BoundField DataField="name_sevice" HeaderText="Dịch vụ" />
                    <asp:BoundField DataField="checkin_date" HeaderText="Ngày vào" />
                    <asp:BoundField DataField="checkout_date" HeaderText="Ngày ra" />
                    <asp:TemplateField HeaderText="Xem hóa Đơn">
                        <ItemTemplate>
                            <asp:Button ID="btnhoadon" runat="server" CssClass="btn btn-danger" OnCommand="Hoadon_Click"
                                CommandName="hoadon" CommandArgument='<%#Bind("id_Bill") %>' Text="Xem" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
         </div>

    <div id="ListBills">
            <div class="title-room">
                Danh sách hóa đơn của khách hàng</div>
            <asp:GridView ID="grvListBill" runat="server" AutoGenerateColumns="false" CssClass="table table-striped"
                CellPadding="4" ForeColor="#333333" GridLines="none">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="STT" ReadOnly="true" />
                    <asp:BoundField DataField="date_created" HeaderText="Ngày tạo" />
                     <asp:BoundField DataField="count_room" HeaderText="Số phòng" />
                    <asp:BoundField DataField="room_price" HeaderText="Giá phòng" />
                     <asp:BoundField DataField="name_sevice" HeaderText="Tên dịch vụ" />
                    <asp:BoundField DataField="services_price" HeaderText="Giá dịch vụ" />
                    <asp:BoundField DataField="total_price" HeaderText="Tổng giá" />
                    <asp:TemplateField HeaderText="Quay Lại Khách Hàng">
                        <ItemTemplate>
                            <asp:Button ID="btnquaylai" CssClass="btn btn-danger" runat="server" Text="Quay Lại" OnCommand="Can_Click"
                                 CommandName="quaylai" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
</asp:Content>
