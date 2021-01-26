<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site1.Master" AutoEventWireup="true" CodeBehind="Datphong.aspx.cs" Inherits="Web_KhachSan.FormBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div>
        <div class="half-bg"></div>
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
						<a class="navbar-brand" href="#"><img class="logo" alt="vevasp"
							src="../img/logo.png"></a>
					</div>
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav">
                            <li><a class="nav-text border-animation" href="Trangchu.aspx">Trang chủ</a></li>
							<li><a class="nav-text border-animation" href="Gioithieu.aspx">Giới Thiệu</a></li>
							<li><a class="nav-text border-animation" href="#">Xem Phòng</a></li>
							<li><a class="nav-text border-animation" href="Service.aspx">Dịch Vụ</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li><a href="#"><span class="rl-button">Ngôn Ngữ</span></a></li>
						</ul>
					</div>
				</div>
			</nav>
        <div class="container">
            <div class="col-lg-4">
                <div class="inp-booking">
                    <div class="tit-booking">
                        Tóm tắt thông tin
                    </div>
                    <div style="margin: 15px 30px;">
                        <div class="item-booking">
                            <asp:Image Width="100" Height="100" ImageUrl="~/img/BG1.jpg" ID="img1" runat="server" /><asp:Label ID="lblTitle" runat="server" Text="Khách sạn Epci hotel Hà Nội, VIỆT NAM" />
                        </div>
                        <div class="item-booking">
                            <b><asp:Label ID="lblDem" runat="server">Từ: </asp:Label></b><asp:Label ID="lblcheckin" runat="server" /> - <asp:Label ID="lblcheckout" runat="server" />
                        </div>
                        <div class="item-booking">
                            <b><asp:Label ID="lblsong" runat="server" /></b>
                        </div>
                        <div>
                            <b><asp:Label ID="lblsophong" runat="server" /></b>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <asp:Label ID="msg" runat="server" />
                <h3 class="welcomtext">Thông tin liên lạc</h3>
                <%--<asp:Label ID="lblmsg" runat="server" />--%>
               <table class="table">
                   <tr>
                       <th>Tên <span>*</span></th>
                       <td></td>
                       <th>Phone <span>*</span></th>
                       <td></td>
                   </tr>
                   <tr>
                       <td><asp:TextBox ID="txtHoten" runat="server" /></td>
                       <td><asp:RequiredFieldValidator ID="rqhoten" runat="server" ControlToValidate="txtHoten" ErrorMessage="Không được để chống" ForeColor="Red" /></td>
                       <td><asp:TextBox ID="txtPhone" runat="server" /></td>
                       <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPhone" ErrorMessage="Không được để chống" ForeColor="Red" /></td>
                       
                   </tr>
                   <tr>
                       <th>Email <span>*</span></th>
                       <td></td>
                       <th>Nhập lại Email <span>*</span></th>
                       <td></td>
                   </tr>
                   <tr>
                       <td><asp:TextBox ID="txtEmail" runat="server" /></td>
                       <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Không được để chống" ForeColor="Red" />
                       <asp:RegularExpressionValidator ID="rgEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Định dạng sai" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"/>
                       </td>
                       <td><asp:TextBox ID="txtConfirmEmail" runat="server" /></td>
                       <td><asp:CompareValidator ID="com" runat="server" ControlToValidate="txtConfirmEmail" ControlToCompare="txtEmail" ErrorMessage="Không chính xác" ForeColor="Red" /></td>
                   </tr>
               </table>
                <br />
                <h3 class="welcomtext">
                    <img src="img/Credits/Block.png" width="25" height="25" runat="server" style="margin:0 10px 0 0" />Đặt phòng sẽ được đảm bảo bằng thẻ tín dụng.</h3>
                <table class="table">
                    <tr>
                        <th>Số thẻ</th>
                        <th colspan="3">Chúng tôi chấp nhận các hình thức thanh toán sau</th>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="txtCardNumber" runat="server" /></td>
                        <td><img width="30" height="20" style="margin: 5px;" src="img/Credits/Discover-EMV.jpg" runat="server" id="img2" />
                            <img width="30" height="20" style="margin: 5px;" src="img/Credits/JCB.png" runat="server" id="img3" />
                            <img width="30" height="20" style="margin: 5px;" src="img/Credits/MasterCard.png" runat="server" id="img4" />
                            <img width="30" height="20" style="margin: 5px;" src="img/Credits/UnionCard.png" runat="server" id="img5" />
                            <img width="30" height="20" style="margin: 5px;" src="img/Credits/Visa.png" runat="server" id="img6" />
                        </td>
                    </tr>
                    <tr>
                        <td><asp:RequiredFieldValidator ID="rq2" runat="server" ControlToValidate="txtCardNumber" ErrorMessage="Không được để chống" ForeColor="Red" /></td>
                    </tr>
                    <tr>
                        <td><b>Tên chủ thẻ</b></td>
                        <td rowspan="2" colspan="3">Đặt chỗ với sự tự tin<br />
                            <img src="img/Credits/Tick.png" width="15" height="15" />Chi tiết thẻ tín dụng của bạn được an toàn thông qua biểu mẫu thanh toán được bảo đảm này.
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtTenChuThe" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td><asp:RequiredFieldValidator ID="rq1" runat="server" ControlToValidate="txtTenChuThe" ErrorMessage="Không được để chống" ForeColor="Red" /></td>
                    </tr>
                </table>
                <h3 class="welcomtext"><img src="img/Credits/Service.jpg" width="25" height="25" runat="server" style="margin-right:10px;" />Dịch vụ tùy chọn.</h3>
                <br />
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
                    DataSourceID="SqlDataSourcekk" DataTextField="name" DataValueField="id">
                </asp:CheckBoxList>
                <asp:SqlDataSource ID="SqlDataSourcekk" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:epichoteldbConnectionStringmm %>" 
                    SelectCommand="SELECT * FROM [ServicesBooking]"></asp:SqlDataSource>
                <div class="welcomtext"><img src="img/Credits/Confrim.png" width="25" height="25" runat="server" style="margin-right: 10px;"/>Xác nhận đặt phòng</div>
                <div><asp:CheckBox ID="chb1" runat="server" Checked="false" Text="Tôi đã đọc và đồng ý với các Điều khoản & Điều kiện và Chính sách bảo mật." /></div>
                
                <br />
                <asp:Button ID="btnDp" runat="server" Text="Đặt phòng" CssClass="btn" OnClick="btnDp_Click" />
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
                <div class="map"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.799033782529!2d105.78971481540161!3d20.960584195476965!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ad2c0c4f3a25%3A0x8966aa7a630b544c!2zS2jDoWNoIFPhuqFuIE3GsOG7nW5nIFRoYW5oIEdyYW5kIFhhIExh!5e0!3m2!1svi!2s!4v1543088726337" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></div>
            </div>
        </div>
    </footer>
  </div>
</asp:Content>
