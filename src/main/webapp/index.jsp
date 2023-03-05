<%@page import="do_an2022.model.*"%>
<%@page import="do_an2022.connection.DbCon"%>
<%@page import="do_an2022.dao.productGTDao"%>
<%@page import="do_an2022.dao.NhanxetDao"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    NhanxetDao tl = new NhanxetDao(DbCon.getConnetion());
	  List<Nhanxet> TL = tl.getAllTraloi();
	  
	  productGTDao qc = new productGTDao(DbCon.getConnetion());
	    List<productGT> GT = qc.getAllproductGT();
  

User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("auth", auth);
    
    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    if (cart_list != null) {
    	request.setAttribute("cart_list", cart_list);
    	
    }
}


    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Trang Chủ </title>
  <link rel="stylesheet" href="css/test.css">
<%@include file="include/head.jsp" %>
<%@include file="include/linkIndex.jsp" %>
</head>
<body>

	<%@include file="include/navbar.jsp" %>
	
	<section class="home">
        <!--div class="text">Web mua hàng online và đặt lịch khám phòng thú y Tâm PETS</div-->
        
        <div class="image-gallery">
            <header>Hệ thống cửa hàng thú cưng Online Shop Pets </header>
        </div>

        <div class="swiper mySwiper container">
            <div class="swiper-wrapper content">
      
              <div class="swiper-slide card">
                <div class="card-content">
                  <div class="image">
                   
                    <img class="card-img-top" src="image/tam.png" alt="Card image cap">
                  </div>
      
                  <div class="media-icons">
                    <a href="https://www.facebook.com/profile.php?id=100005225086903"><i class="fab fa-facebook"></i></a>
                        
                    <i class="fab fa-twitter"> </i>
                    <i class="fab fa-github"></i>
                    <i class="fa fa-cloud"></i>
                    
                  </div>
      
                  <div class="name-profession">
                    <span class="name">Bác sĩ: Cao Nhật Tâm</span>
                    <span class="profession">Chuyên chữa bệnh cho thú cưng của bạn</span>
                  </div>
      
                  <div class="rating">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                    <i class="far fa-star"></i>
                  </div>
      
                  <div class="button">
                    <button class="aboutMe">About Me</button>
                    <a href="https://www.google.com/maps/place/Bác+sĩ+thú+y+Tâm/@15.8654575,108.1024551,16z/data=!4m5!3m4!1s0x0:0x57d2f0ad1dc5f09a!8m2!3d15.8653869!4d108.1023852"><button class="hireMe">My Address</button></a>
                  </div>
                </div>
              </div>
                
              <div class="swiper-button-next"></div>
              <div class="swiper-button-prev"></div>
              <div class="swiper-pagination"></div>

             
              

    </section>
    <!-- bỏ -->
	<section class="about" id="GT">

    <h1 class="heading"> <span>Về</span> Bác Sĩ </h1>

    <div class="row">

        <div class="image">
            <img src="" alt="">
        </div>

        <div class="content">
            <h3>Có thể bạn chưa biết về Pets Shop?</h3>
            <p>Shop Được thành lập vào năm 2022 do bác sĩ Cao Nhật Tâm làm chủ,được học tại trường đại học Nông Lâm Huế và được traning nhiều tại các khoá học trong nhiều năm bác sĩ đã có kinh nghiệm chữa nhiều loại bệnh cho các loại vật nuôi như: Chó, Mèo, Bò Trâu, Heo,..</p>
            <p>Shop chuyên chữa các loại như Chó, Mèo, Trâu, Bò,.... gồm các dịch vụ như: siêu âm, mổ đẻ,triệt sản,cấy giống,cắt tỉa lông cho thú cưng,... </p>
            <p>Tại đây các bạn có thể đặt hàng Online các mặt hàng như: pets yêu, dụng cụ, thuốc, lồng nuôi, thức ăn và đặt lịch khám cho bé yêu của nhà mình nhé. Các bạn có thể xem thêm ở phía dưới. </p>
            <a href="#Shop" class="btn">Xem thêm</a>
        </div>

    </div>

</section>
	  <!-- bỏ -->
<section class="about" id="Shop">

    <h1 class="heading"> <span>Về</span> Shop Pets </h1>

    <div class="row">

        <div class="image">
            <img src="imageID/cho1.jpeg" alt="">
        </div>

        <div class="content">
            <h3>Chào mừng bạn đã trở thành với Shoppets!!!</h3>
            <p>Thật tuyệt vời khi đã được bạn ghé thăm và trở thành 1 thành viên của shop Pets hãy cũng đồng hành với Shop Pets trong thời gian sắp tới nhé ❤️</p>
            <p>Chắc hẳn bạn là 1 người cực mê thú cưng nên đã đến đây hãy cùng Shops Pets đi chọn những thứ mà bạn cần nhé </p>
            <a href="#Shop1" class="btn">xem thêm</a>
           
        </div>

    </div>

</section>
	<section class="about" id="Shop1">

    <h1 class="heading"> <span>Về</span> Shop Pets </h1>

    <div class="row">

        <div class="image">
            <img src="imageID/meonoel.jpeg" alt="">
        </div>

        <div class="content">
            <h3>Shop pets được thành lập vào năm 2022 </h3>
            <p>Nhằn phụ vụ các Sen trong dịp lễ noel🎅🏻 và dịp tết năm 2023🎇 ở Shop Pets có rất nhiều ưu đãi để các Sen dễ típ cận và phụ vụ cho các pet nhà mình ️</p>
             <a href="product.jsp" class="btn">Những món đồ mình cần</a>
            <p>Chắc hẳn bạn là 1 người cực mê thú cưng nên đã đến đây hãy cùng Shops Pets đi chọn những thứ mà bạn cần nhé </p>
            <a href="#" class="btn">xem thêm</a>
           
        </div>

    </div>

</section>

<!--món đồ bạn có thể mua -->
<section class="menu" id="menu">

    <h1 class="heading"> our <span>Các sản phẩm nổi bật của shop</span> </h1>

    <div class="box-container">
<%
			if( !GT.isEmpty()) {
				for (productGT g : GT) { %>
        <div class="box">
            <img src="imageGT/<%= g.getImage() %>" alt="">
            <h3><%= g.getName() %></h3>
            <div class="price"><%= g.getGia() %>VNĐ<span><%= g.getGiachinh() %>VNĐ</span></div>
            <a href="product.jsp" class="btn">add to cart</a>
             <a href="product.jsp" class="btn">Xem thêm</a>
        </div>

     <% 	}
			}
		%>

    </div>

</section>
<!-- khám và chữa bệnh -->
<section class="about" id="Shop">

    <h1 class="heading"> <span>Về</span> Khám và chữa bệnh </h1>

    <div class="row">

        <div class="image">
            <img src="imageID/khamcb.jpeg" alt="">
        </div>

        <div class="content">
            <h3>Chào mừng bạn đã trở thành với Shoppets!!!</h3>
            <p>Thật tuyệt vời khi đã được bạn ghé thăm và trở thành 1 thành viên của shop Pets hãy cũng đồng hành với Shop Pets trong thời gian sắp tới nhé ❤️</p>
            <p>Chắc hẳn bạn là 1 người cực mê thú cưng nên đã đến đây hãy cùng Shops Pets đi chọn những thứ mà bạn cần nhé </p>
            <a href="#bs" class="btn">Những bác sĩ của Pets</a>
           
        </div>

    </div>

</section>
<!-- thông báo của shop -->


<!--  các câu hỏi và trả lời của shop -->
<!--  các câu hỏi và trả lời của shop -->
<section class="about" id="Shop">

    <h1 class="heading"> <span>Về</span> Trò chuyện cùng Pets </h1>

    <div class="row">

        <div class="image">
            <img src="imageID/hoi.jpeg" alt="">
        </div>
		<%
			if(!TL.isEmpty()) {
				for (Nhanxet l : TL) {		
				%>
        <div class="content">
            <h3>Những thắc mắc và các câu hỏi của bạn được đặt ở đây 🗣</h3>
            <p>Câu hỏi: <%=l.getNx() %>️</p>
            <p>Câu Trả lời: <%=l.getTraloi() %></p>
            <a href="trangcanhan.jsp" class="btn">Góp ý kiến và đặt câu hỏi</a>
           
        </div>
		<%}	
			}
			%>
    </div>

</section>


<!-- nhân viên của pets -->
<section class="review" id="bs">

    <h1 class="heading"> Bác Sĩ chuyên khoa: <span>Của Pets Shops</span> </h1>

    <div class="box-container">

        <div class="box">
            <img src="#" alt="" class="quote">
            <p>Được học tại trường đại học Nông Lâm Huế ra và ra trường vào năm 2017, bác sĩ đã có .</p>
            <img src="image/tam.png" class="user" alt="">
            <h3>Bác sĩ: Cao Nhật Tâm</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
                
            </div>
               <div class="media-icons">
                    <a href="https://www.facebook.com/profile.php?id=100005225086903"><i class="fab fa-facebook"></i></a>
                        
                    <i class="fab fa-twitter"> </i>
                    <i class="fab fa-github"></i>
                    <i class="fa fa-cloud"></i> 
                  </div>
             <p>Số điện thoại liên hệ: 0397898964</p>
        </div>

        <div class="box">
            <img src="images/quote-img.png" alt="" class="quote">
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi nulla sit libero nemo fuga sequi nobis? Necessitatibus aut laborum, nisi quas eaque laudantium consequuntur iste ex aliquam minus vel? Nemo.</p>
            <img src="image/nhu.jpeg" class="user" alt="">
            <h3>Quản Lý:Trần Thị Như</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
               <div class="media-icons">
                    <a href="https://www.facebook.com/profile.php?id=100005225086903"><i class="fab fa-facebook"></i></a>
                        
                    <i class="fab fa-twitter"> </i>
                    <i class="fab fa-github"></i>
                    <i class="fa fa-cloud"></i>
                    
                  </div>
        </div>
        
        <div class="box">
            <img src="images/quote-img.png" alt="" class="quote">
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi nulla sit libero nemo fuga sequi nobis? Necessitatibus aut laborum, nisi quas eaque laudantium consequuntur iste ex aliquam minus vel? Nemo.</p>
            <img src="image/nhon.jpg" class="user" alt="">
            <h3>Giám Đốc: Cao Nhật Nhơn</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
               <div class="media-icons">
                    <a href="https://www.facebook.com/profile.php?id=100005225086903"><i class="fab fa-facebook"></i></a>
                        
                    <i class="fab fa-twitter"> </i>
                    <i class="fab fa-github"></i>
                    <i class="fa fa-cloud"></i>
                    
                  </div>
        </div>

    </div>

</section>


    <!-- Swiper JS -->
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>


    <%@include file="include/hieuung.jsp" %>
<!-- kí hiệu -->
<section class="footer">

    <div class="share">
        <a href="https://www.facebook.com/caonhatnhon.beo" class="fab fa-facebook-f"></a>
        <a href="https://twitter.com/nhon_beo" class="fab fa-twitter"></a>
        <a href="https://www.instagram.com/caonhatnhon/?fbclid=IwAR2n7dhamW5cQJYO9fsPKTwVB-954qBa9p_3mJQ1ZgfbQP6ZqmshSD6JenM" class="fab fa-instagram"></a>
        <a href="#" class="fab fa-linkedin"></a>
        <a href="#" class="fab fa-pinterest"></a>
    </div>

    <div class="links">
        <a href="index.jsp">home</a>
        <a href="#">about</a>
        <a href="#">menu</a>
        <a href="#">products</a>
        <a href="#">review</a>
        <a href="#">contact</a>
        <a href="#">blogs</a>
    </div>

   

    <div class="credit">created by <span>Cao Nhật Nhơn</span> | all rights reserved</div>

</section>

<!-- footer section ends -->


<!-- custom js file link  -->
<script src="js/script.js"></script>
</body>
</html>