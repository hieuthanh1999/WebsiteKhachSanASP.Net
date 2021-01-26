<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Basic_page.Master" AutoEventWireup="true" CodeBehind="Trangchu.aspx.cs" Inherits="Web_KhachSan.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Epic Hotel
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="position: relative; width: 100%;">
        <div class="carousel slide" data-ride="carousel">
		    <div class="carousel-inner">
			    <div class="item active full-height">
				    <img src="img/BG1.jpg" />
			    </div>
			    <div class="item full-height">
				    <img src="img/BG2.jpg" />
			    </div>
                <div class="item full-height">
				    <img src="img/BG3.jpg" />
			    </div>
		    </div>
	    </div>
	    <div class="bg-opacity">
		    <div class="menubar-area">
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
							    src="img/logo2.png"></a>
					    </div>
					    <div class="collapse navbar-collapse">
						    <ul class="nav navbar-nav">
                                <li><a class="nav-text border-animation" href="Trangchu.aspx">Trang chủ</a></li>
							    <li><a class="nav-text border-animation" href="Gioithieu.aspx">Giới Thiệu</a></li>
							    <li><a class="nav-text border-animation" href="Phong.aspx">Xem Phòng</a></li>
							    <li><a class="nav-text border-animation" href="Dichvu.aspx">Dịch Vụ</a></li>
						    </ul>
						    <ul class="nav navbar-nav navbar-right">
							    <li><a href="#"><span class="rl-button">Ngôn Ngữ</span></a></li>
						    </ul>
					    </div>
				    </div>
			    </nav>
		    </div>
		    <div class="container">
			    <div class="wow fadeInDown text-wc">
				    <div class="carousel slide" data-ride="carousel">
					    <div class="carousel-inner">
						    <div class="item active">
							    <h1>Khách Sạn Năm Sao</h1>
						    </div>
						    <div class="item">
							    <h1>Tiết Kiệm Chi Phí</h1>
						    </div>
						    <div class="item">
							    <h1>Thanh Toán Linh Động</h1>
						    </div>
					    </div>
				    </div>
			    </div>
			    <div class="banner-body">
				    <div
					    class=" col-md-offset-3 col-sm-offset-3 col-md-6 col-sm-6 col-xs-12">
					    <form class="wow fadeInUp">
						    <div class="tryfree-input">
							    <div class="input-group">
								    <input type="email" class="form-control"
									    placeholder="Nhập email của bạn" required="required">
								    <div class="input-group-btn">
									    <button class="btn btn-success" type="submit">Nhận Khuyến Mại</button>
								    </div>
							    </div>
						    </div>
						    <div class="veva-info text-wc center-unit">
							    <h4>Nhập email để đăng nhận thông tin khuyến mại</h4>
							    <button class="btn btn-info" type="button">Tìm Hiểu Thêm</button>
						    </div>
					    </form>
				    </div>
			    </div>
		    </div>
	    </div>
        <div class="block-booking">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2"><h3 class="title-booking">ĐẶT TRƯỚC</h3></div>
                    <div class="col-lg-2"><asp:TextBox runat="server" ID="checkin" CssClass="datepicker-field input-booking" placeholder="Ngày check in"/></div>
                    <div class="col-lg-2"><asp:TextBox runat="server" ID="checkout" CssClass="datepicker-field input-booking" placeholder="Ngày check out"/></div>
                    <div class="col-lg-2"><asp:DropDownList runat="server" ID="TextBox3" CssClass="input-booking" placeholder="Ngày check in">
                        <asp:ListItem Text="1 người" Value="1"  Selected="True"/>
                        <asp:ListItem Text="2 người" Value="2" />
                        <asp:ListItem Text="3 người" Value="3" />
                        <asp:ListItem Text="4 người" Value="4" />
                        <asp:ListItem Text="5 người" Value="5" />
                        <asp:ListItem Text="6 người" Value="6" />
                        <asp:ListItem Text="7 người" Value="7" />
                        <asp:ListItem Text="8 người" Value="8" />
                    </asp:DropDownList></div>
                    <div class="col-lg-2"><asp:DropDownList runat="server" ID="TextBox4" CssClass="input-booking" placeholder="Ngày check in">
                        <asp:ListItem Text="1 phòng" Value="1" Selected="True"/>
                        <asp:ListItem Text="2 phòng" Value="2" />
                        <asp:ListItem Text="3 phòng" Value="3" />
                        <asp:ListItem Text="4 phòng" Value="4" />
                        <asp:ListItem Text="5 phòng" Value="5" />
                    </asp:DropDownList></div>
                    <div class="col-lg-2"><asp:Button runat="server" ID="btnBooking" Text="Đặt Ngay" CssClass="btn-danger btn-booking" OnClick="btnBooking_Click"/></div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="info-bar">
            <div class="col-lg-4">
                <h3 style="margin: 50px 20px 0; font-weight: bold">THÔNG TIN KHÁCH SẠN</h3>
                <div class="table-info">
                    <ul>
                        <li>Giờ check in: 14:00</li>
                        <li>Giờ check out: 17:00</li>
                        <li>Miễn phí dịch vụ: internet, TV ...</li>
                        <li>Hệ thống điều hòa, tủ lạnh</li>
                        <li>Dọn phòng hàng ngày</li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-8 img-info">
                <div class="row-img">
                    <div class="col-lg-6">
                        <div class="box-img">
                            <img alt="no" src="img/BG1.jpg" />
                            <div class="title-img">Phòng Ngủ</div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="box-img">
                            <img alt="no" src="img/BG2.jpg" />
                            <div class="title-img">Phòng Ăn</div>
                        </div>
                    </div>
                </div>
                <div class="row-img">
                    <div class="col-lg-6">
                        <div class="box-img">
                            <img alt="no" src="img/BG3.jpg" />
                            <div class="title-img">Khuân Viên</div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="box-img">
                            <img alt="no" src="img/BG3.jpg" />
                            <div class="title-img">Phòng Ăn</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="head-title">Giới Thiệu Về EPIC Hotel</div>
        <div class="info-hotel">
            <div class="col-lg-6"><asp:Image runat="server" ImageUrl="img/BG3.jpg"/></div>
            <div class="col-lg-6">
                <span>Chào mừng Quý Khách đến Epic! Xích lô là một phương tiện thông dụng thời xưa của người Hà Nội thường được sử 
                dụng chủ yếu bởi tầng lớp trí thức, địa chủ thời xa xưa. Ngày nay xích lô đã không còn được sử dụng phổ biến như trước 
                nữa nhưng vẫn được du khách trong và ngoài nươc yêu thích sử dụng mỗi khi tới thăm quan thủ đô Hà Nội, thật tuyệt khi được 
                thả mình thong thả ngồi trên chiếc xích lô dạo qua các khu phố cổ ngắm nhìn đa dạng kiến trúc cổ kính và nhịp sống của người 
                Hà Thành thanh lịch, duyên dáng. Khách sạn được đặt tên là Cyclo, chọn hình ảnh chiếc xích lô làm biểu tượng riêng biệt của khách sạn, 
                chiếc xích lô sử dụng Chất liệu đồng được các nghệ chế tác thủ công tạo nên chiếc xích lô bằng đồng màu vàng, chúng tôi muốn được nâng niu
                 gìn giữ hình ảnh chiếc xích lô như nét đẹp văn hóa lâu đời của người Hà nội. Màu vàng của chiếc xích lô tượng trưng cho chất lượng dịch
                  vụ mà khách sạn chúng tôi hướng tới  - Một Khách sạn với Tiêu chí sản phẩm du lịch luôn coi trọng chất lượng dịch vụ, gìn giữ  văn hóa dân tộc.</span><br />
                <button class="btn btn-info" type="button">Tìm Hiểu Thêm</button>
            </div>
        </div>
        <div class="head-title">Dịch Vụ</div>
        <div class="service-info">
            <div class="col-lg-6"><i class="fas fa-parking"></i>Bãi đỗ xe</div>
            <div class="col-lg-6"><i class="fas fa-cookie-bite"></i>Bữa sáng miễn phí</div>
            <div class="col-lg-6"><i class="fas fa-tshirt"></i>Giặt là</div>
            <div class="col-lg-6"><i class="fas fa-utensils"></i>Nhà hàng</div>
            <div class="col-lg-6"><i class="fas fa-dumbbell"></i>Phòng tập thể thao</div>
            <div class="col-lg-6"><i class="fas fa-angle-double-up"></i>Thang máy</div>
            <div class="col-lg-6"><i class="fas fa-tv"></i>Truyền hình cáp/vệ tinh</div>
            <div class="col-lg-6"><i class="fas fa-wifi"></i>Wifi tốc độ cao</div>
            <div class="col-lg-6"><i class="fas fa-child"></i>Trông trẻ</div>
            <div class="col-lg-6"><i class="fas fa-coffee"></i>Quán cà phê</div>
            <div class="col-lg-6"><i class="fas fa-dollar-sign"></i>Đổi tiền</div>
            <div class="col-lg-6"><i class="fas fa-users"></i>Tiếp tân 24/24</div>
            <div class="col-lg-6"><i class="fas fa-smoking"></i>Phòng hút thuốc</div>
            <div class="col-lg-6"><i class="fas fa-car"></i>Đưa đón tại sân bay</div>
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
</asp:Content>
