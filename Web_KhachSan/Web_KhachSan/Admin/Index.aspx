<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin_page.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web_KhachSan.Adminator.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Adminator | Trang Chính
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Nameofpage" runat="server">
    Trang chính
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
    <div class="col-lg-3" style="background-color: #A9A9A9">Tổng số phòng: <asp:Label ID="tsP" runat="server" /></div>
    <div class="col-lg-3" style="background-color: #A9A9A9">Tổng số dịch vụ: <asp:Label ID="tsDV" runat="server" /></div>
      <div class="col-lg-3" style="background-color: #A9A9A9">Tổng số hóa đơn: <asp:Label ID="bill" runat="server" /></div>
    <div class="col-lg-3" style="background-color: #A9A9A9">Tổng số phòng đã đặt: <asp:Label ID="booking" runat="server" /></div>
   <%-- <div class="col-lg-4" style="background-color: #A9A9A9">Tổng số : <asp:Label ID="tsSum" runat="server" /></div>--%>
</asp:Content>
