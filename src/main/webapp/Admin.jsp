<%@page import="do_an2022.connection.DbCon"%>
<%@page import="do_an2022.model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
 <link rel="stylesheet" href="css/admintest.css">
<%@include file="include/head.jsp" %>
<%@include file="include/linkIndex.jsp" %>
</head>
<body>
	<%@include file="include/navbarAdmin.jsp" %>
	
	<section class="home">
        <!--div class="text">Web mua hàng online và đặt lịch khám phòng thú y Tâm PETS</div-->
        
        <div class="image-gallery">
            <header>admin management</header>
        </div>

        <div class="swiper mySwiper container">
            <div class="swiper-wrapper content">
      
              <div class="swiper-slide card">
                <div class="card-content">
                  <div class="image">
                   
                    <img class="card-img-top" src="image/nhon.jpg" alt="Card image cap">
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
    
   
    

    <!-- Swiper JS -->
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>


    <%@include file="include/hieuung.jsp" %>
</body>
</html>