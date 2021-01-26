<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Extra_page.Master" AutoEventWireup="true" CodeBehind="Gioithieu.aspx.cs" Inherits="Web_KhachSan.Pages.Gioithieu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Welcom!
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="welcomtext">Chào mừng Quý Khách tới Epic hotel!</h3>
    <br />
    <p class="text">
        Xích lô là một phương tiện thông dụng thời xưa của người Hà Nội thường được sử dụng chủ yếu bởi tầng lớp trí thức, địa chủ 
        thời xa xưa. Ngày nay xích lô đã không còn được sử dụng phổ biến như trước nữa nhưng vẫn được du khách trong và ngoài nươc 
        yêu thích sử dụng mỗi khi tới thăm quan thủ đô Hà Nội, thật tuyệt khi được thả mình thong thả ngồi trên chiếc xích lô dạo 
        qua các khu phố cổ ngắm nhìn đa dạng kiến trúc cổ kính và nhịp sống của người Hà Thành thanh lịch, duyên dáng.

        Du khách khi dạo quanh khu phố cổ Hà Nội đều dễ dàng bắt gặp hình ảnh chiếc xích lô, lạ lẫm để khám phá với mỗi du khách 
        nước ngoài nhưng là hình ảnh rất quen thuộc với mỗi người dân Hà Nội. Khách sạn Cyclo Hà Nội chọn Hình ảnh chiếc xích lô – 1 
        loại phương tiện giao thông thô sơ mang đậm nét độc đáo của người dân Hà Thành xưa là muốn gìn giữ giá trị cổ kính, lịch sử 
        lâu đời, hình ảnh của Hà nội.
    </p>
    <div>
        <asp:UpdatePanel ID="udp1" runat="server">
            <ContentTemplate>
                <asp:ScriptManager ID="scm1" runat="server" />
                <asp:Timer ID="tm1" runat="server" Interval="3000" OnTick="tm1_Tick" />
                <asp:Image ID="img1" runat="server" ImageUrl="img/Images/1.jpg" Width="730" Height="300" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <p class="text">
        Khách sạn Cyclo Hà Nội nằm ngay giữa trung tâm thủ đô, khu bảo tồn phố cổ Hà nội, tọa lạc ngay khu phố nhộn nhịp tấp nập, 
        trung tâm mua sắm thương mại của người dân Hà Thành và du khách trong và ngoài nước nhưng vẫn giữ được những nét thư thái, 
        cổ kính và không gian yên tĩnh. Chỉ mất vài phút đi bộ, du khách có thể thăm quan các địa danh nổi tiếng và khám phá 36 phố 
        cổ Hà Nội.  Khách sạn Cyclo không sở hữu một tòa nhà đồ sộ theo phong cách kiến trúc châu Âu mà được thiết kế và bài trí 
        theo phong cách thiết kế đặc trưng của người Hà Nội, du khách khi lưu trú tại đây sẽ cảm nhận được sự  ấm áp và gần gũi 
        nhưng sang trọng của người Hà Nội, vẻ đẹp giản dị, kiến trúc văn hóa thanh lịch và đầm ấp của người Hà Thành.
    </p>
     <div>
        <asp:UpdatePanel ID="udp2" runat="server">
            <ContentTemplate>
                <asp:Timer ID="tm2" runat="server" Interval="3000" OnTick="tm2_Tick"/>
                <asp:Image ID="img2" runat="server" ImageUrl="img/Images/7.jpg" Width="730" Height="300" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <p class="text">
        Nằm trong khu vực trung tâm Hà Nội sầm uất và hiện đại nhưng khách sạn Cyclo lại chọn cho mình phong cách dân dã và có 
        phần cổ xưa. Thiết kế chủ đạo với gam màu trắng, đen và nâu, du khách dễ dàng nhận thấy hình ảnh Hà Nội xưa cũ mộc mạc 
        và bình dị khi đặt chân tới khách sạn. Đến Cyclo du khách lại được tái hiện một Hà Nội xưa qua những bức tranh treo tường, 
        những món đồ lưu niệm, album ảnh Hà Nội xưa. đặc biệt là hình ảnh các thiếu nữ  Hà nội xưa trong tà áo dài truyền thống, 
        rất cổ điển nhưng rất đặc biệt với nét đẹp duyên dáng, thanh lịch.
    </p>
    <div>
        <asp:UpdatePanel ID="udp3" runat="server">
            <ContentTemplate>
                <asp:Timer ID="tm3" runat="server" Interval="3000" OnTick="tm3_Tick"/>
                <asp:Image ID="img3" runat="server" ImageUrl="img/Images/13.jpg" Width="730" Height="300" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <p class="text">
        Khách sạn chọn hình ảnh chiếc xích lô làm biểu tượng riêng biệt của khách sạn, chiếc xích lô sử dụng Chất liệu đồng được 
        các nghệ chế tác thủ công tạo nên chiếc xích lô bằng đồng màu vàng, chúng tôi muốn được nâng niu gìn giữ hình ảnh chiếc 
        xích lô như nét đẹp văn hóa lâu đời của người Hà nội. Màu vàng của chiếc xích lô tượng trưng cho chất lượng dịch vụ mà 
        khách sạn chúng tôi hướng tới  - Một Khách sạn với Tiêu chí sản phẩm du lịch luôn coi trọng chất lượng dịch vụ, gìn giữ  
        văn hóa dân tộc.
    </p>
    <b class="endtext">
        Khách sạn Veva - Nơi trải nghiệm nét đẹp văn hóa và thanh lịch của người Việt Nam!
    </b>
</asp:Content>

