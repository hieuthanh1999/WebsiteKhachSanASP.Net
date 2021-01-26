<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site1.Master" AutoEventWireup="true"
    CodeBehind="Phong.aspx.cs" Inherits="Web_KhachSan.Book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div>
        <div class="half-bg">
        </div>
        <nav class="navbar navbar-1 navbar-fixed-top">
				<div class="container">
					<div class="navbar-header">
						<!-- menu moblie -->
						<button type="button" class="navbar-toggle">
							<div onclick="openNav();">
								<div class="bar1"></div>
								<div class="bar2"></div>
								<div class="bar3"></div>
							</div>
						</button>
						<div id="thisSidenav" class="sidenav">
							<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
							<a href="#">About</a> <a href="#">Services</a> <a href="#">Clients</a>
							<a href="#">Contact</a>
						</div>
						<!-- end menu moblie -->
						<a class="navbar-brand" href="/TrangChu.aspx"><img class="logo" alt="vevasp"
							src="../img/logo.png"/></a>
					</div>
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav">
                            <li><a class="nav-text border-animation" href="Trangchu.aspx">Trang chủ</a></li>
							<li><a class="nav-text border-animation" href="Gioithieu.aspx">Giới Thiệu</a></li>
							<li><a class="nav-text border-animation" href="#">Xem Phòng</a></li>
							<li><a class="nav-text border-animation" href="DichVu.aspx">Dịch Vụ</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li><a href="#"><span class="rl-button">Ngôn Ngữ</span></a></li>
						</ul>
					</div>
				</div>
			</nav>
    <div class="container">
            <div class="col-lg-4">
                <div class="tb-booking">
                    <div class="tit-booking">
                        Đặt phòng online</div>
                    <div style="margin: 15px 30px">
                        <div class="item-booking">
                            <span>CHECK IN</span>
                            <asp:RequiredFieldValidator ID="rg" runat="server" ControlToValidate="TextBox1" ErrorMessage="Không được để chống"
                                ForeColor="Red" />
                            <asp:TextBox runat="server" ID="TextBox1" CssClass="datepicker-field inp-booking" />
                        </div>
                        <div class="item-booking">
                            <span>CHECK OUT</span>
                            <asp:RequiredFieldValidator ID="requi" runat="server" ControlToValidate="TextBox2"
                                ErrorMessage="Không được để chống" ForeColor="Red" />
                            <asp:TextBox runat="server" ID="TextBox2" CssClass="datepicker-field inp-booking" />
                        </div>
                        <div class="col-lg-6" style="padding-right: 10px;">
                            <div class="item-booking">
                                <span>SỐ NGƯỜI</span>
                                <asp:TextBox runat="server" ID="TextBox3" CssClass=" inp-booking" />
                               <%-- <asp:DropDownList runat="server" ID="ddl1" CssClass="inp-booking">
                                    <asp:ListItem Text="1 người" Value="1" />
                                    <asp:ListItem Text="2 người" Value="2" Selected="True" />
                                    <asp:ListItem Text="3 người" Value="3" />
                                    <asp:ListItem Text="4 người" Value="4" />
                                    <asp:ListItem Text="5 người" Value="5" />
                                    <asp:ListItem Text="6 người" Value="6" />
                                    <asp:ListItem Text="7 người" Value="7" />
                                    <asp:ListItem Text="8 người" Value="8" />
                                </asp:DropDownList>--%>
                            </div>
                        </div>
                        <div class="col-lg-6" style="padding-left: 10px;">
                            <div class="item-booking">
                                <span>SỐ PHÒNG</span>
                                <asp:TextBox runat="server" ID="TextBox4" CssClass=" inp-booking" />
                               <%-- <asp:DropDownList runat="server" ID="ddl2" CssClass="inp-booking">
                                    <asp:ListItem Text="1 phòng" Value="1" Selected="True"/>
                                    <asp:ListItem Text="2 phòng" Value="2" />
                                    <asp:ListItem Text="3 phòng" Value="3" />
                                    <asp:ListItem Text="4 phòng" Value="4" />
                                    <asp:ListItem Text="5 phòng" Value="5" />
                                </asp:DropDownList>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
          <div class="col-lg-8">
                <h3 class="welcomtext">
                    Danh Sách Phòng (1-Single Rooms 2-Double Rooms)</h3>
                <asp:Label ID="msg" runat="server" />
                <asp:DataList ID="dtl" runat="server" DataKeyField="id" 
                    DataSourceID="SqlDataSourcemm">
                    <ItemTemplate>
                        <table class="table1" style="margin-bottom:30px;">
                            <tr>
                                <th colspan="5">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>' />
                                </th>
                            </tr>
                            <tr>
                                <td rowspan="6">
                                    <asp:Image ID="img" runat="server" ImageUrl='<%#"~/img/"+Eval("img") %>' Width="200"
                                        Height="200" />
                                </td>
                            </tr>
                            <tr>
                                <td class="text">
                                    Mã phòng:
                                </td>
                                <td>
                                    <asp:Label ID="id_room" runat="server" Text='<%# Eval("id") %>' />
                                </td>
                                <td rowspan="2" class="price">
                                    <asp:Label ID="price" runat="server" Text='<%# Eval("price") %>' />
                                    đ
                                </td>
                            </tr>
                            <tr>
                                <td class="text">
                                    Tên:
                                </td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("name") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="text">
                                    Loại:
                                </td>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("kind") %>' />
                                </td>
                                <td class="vat">
                                    Bao gồm thuế VAT.
                                </td>
                            </tr>
                            <tr>
                                <td class="text">
                                    Còn phòng:
                                </td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("available") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="text">
                                    Tình trạng:
                                </td>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("room_status") %>' />
                                </td>
                                <td>
                                    <asp:Button ID="btnBook" runat="server" Text="Đặt phòng" CommandName="dat phong" CssClass="btn" CommandArgument= '<%# Bind("id")%>' OnCommand="Click_datphong" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSourcemm" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:quanlykhachsanConnectionString  %>" 
                    SelectCommand="SELECT * FROM [Rooms]" OnSelecting="SqlDataSourcemm_Selecting"></asp:SqlDataSource>
            </div>
        </div>
        <footer>
        <div class="container">
            <div class="col-lg-6">
                <div class="title-ft">Liên hệ</div>
                <ul class="cont">
                    <li><i class="fas fa-map-marker-alt"></i>88 Đâu Đó, Hoàn Kiếm, Hà Nội</li>
                    <li><i class="fas fa-phone"></i>(84) 3645 7777</li>
                    <li><i class="fas fa-fax"></i>(84) 3663 5217</li>
                    <li><i class="fas fa-envelope-open"></i>contact@epichotel.com</li>
                </ul>
                <div class="conf">Chứng nhận khách sạn năm sao từ năm &#174; 2011<br /><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
            </div>
            <div class="col-lg-6">
                <div class="header-map">Bản đồ</div>
                <div class="map"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.799033782529!2d105.78971481540161!3d20.960584195476965!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ad2c0c4f3a25%3A0x8966aa7a630b544c!2zS2jDoWNoIFPhuqFuIE3GsOG7nW5nIFRoYW5oIEdyYW5kIFhhIExh!5e0!3m2!1svi!2s!4v1543088726337" width="600" height="450" frameborder="0" style="border:0" allowfullscreen>

                                 </iframe>></div>
            </div>
        </div>
    </footer>
    </div>
</asp:Content>
