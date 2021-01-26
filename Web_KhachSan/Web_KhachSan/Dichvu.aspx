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
         <table class="table2" CssClass="table table-striped">
               <tr>
                     <td class="td"><b>Mã dịch vụ:</b></td>
                     <td class="td"><b>Tên:</b></td>
                     <td class="td"><b>Gía:</b></td>
                     <td class="td"><b>Tình trạng:</b></td>
               </tr>
      <asp:DataList ID="dtlService" CssClass="datalist" runat="server" 
            DataKeyField="id" DataSourceID="SqlDataSourceOk">
           <ItemTemplate>
                    <tr border="1">               
                        <td class="td"><asp:Label ID="idLabel" runat="server" Text='<%# Bind("id") %>' /></td>   
                        <td class="td"><asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' /></td>
                        <td class="td"><asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' /></td>
                        <td class="td"><asp:Label ID="service_statusLabel" runat="server" Text='<%# Bind("service_status") %>' /></td>
                    </tr>
               
            </ItemTemplate>
        </asp:DataList>
                
                </table>
        <asp:SqlDataSource ID="SqlDataSourceOk"  runat="server" SelectCommand="SELECT * FROM [ServicesBooking]" ConnectionString="<%$ ConnectionStrings:quanlykhachsanConnectionString %>"></asp:SqlDataSource >
        <%--<asp:SqlDataSource ID="SqlDataSourceOk" runat="server" 
            ConnectionString="<%$ ConnectionStrings:epichoteldbConnectionStringOk %>" 
            SelectCommand="SELECT * FROM [ServicesBooking]"></asp:SqlDataSource>--%>
    </div>
</asp:Content>
