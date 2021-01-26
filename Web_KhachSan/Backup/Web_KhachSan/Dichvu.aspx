<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Extra_page.Master"
    AutoEventWireup="true" CodeBehind="Dichvu.aspx.cs" Inherits="Web_KhachSan.Phi.Service" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Service
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="text1">
        Dịch vụ khách sạn!</h3>
    <br />
    <div class="col-lg-4 text2">
        <asp:DataList ID="dtlService" CssClass="datalist" runat="server" 
            DataKeyField="id" DataSourceID="SqlDataSourceOk">
            <ItemTemplate>
                <table class="table2">
                    <tr style="border-bottom: 1px solid #0094ff;">
                        <td class="td"><b>Mã dịch vụ:</b></td>
                        <td><asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' /></td>
                    </tr>
                    <tr style="border-bottom: 1px solid #0094ff;">
                        <td class="td"><b>Tên:</b></td>
                        <td><asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' /></td>
                    </tr>
                    <tr style="border-bottom: 1px solid #0094ff;">
                        <td class="td"><b>Gía:</b></td>
                        <td><asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' /></td>
                    </tr>
                    <tr style="border-bottom: 1px solid #0094ff;">
                        <td class="td"><b>Tình trạng:</b></td>
                        <td><asp:Label ID="service_statusLabel" runat="server" Text='<%# Eval("service_status") %>' /></td>
                     </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSourceOk" runat="server" 
            ConnectionString="<%$ ConnectionStrings:epichoteldbConnectionStringOk %>" 
            SelectCommand="SELECT * FROM [ServicesBooking]"></asp:SqlDataSource>
    </div>
</asp:Content>
