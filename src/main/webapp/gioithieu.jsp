<%@page import="do_an2022.connection.DbCon"%>
<%@page import="do_an2022.dao.ProductDao"%>

<%@page import="do_an2022.dao.productGTDao"%>
<%@page import="do_an2022.model.*"%> 
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%

ProductDao pb = new ProductDao(DbCon.getConnetion());
List<Product> products = pb.getAllProducts();

productGTDao qc = new productGTDao(DbCon.getConnetion());
List<productGT> GT = qc.getAllproductGT();



ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
	
}

    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome to SHOP PETS</title>
<!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/test.css">
</head>
<body>
<!-- header section starts  -->

<header class="header">

    <a href="#" class="logo">
        <img src="image/logotam.jpeg" alt="">
    </a>

    <nav class="navbar">
        <a href="gioithieu.jsp">home</a>
        <a href="#GT">Bác Sĩ</a>
        <a href="#Shop">Shop Pets</a>
        <a href="#products">products</a>
        <a href="#review">review</a>
        <a href="#contact">Đăng Kí Lịch</a>
        <a href="#blogs">Chi Tiết SP</a>
        <a href="login.jsp">login</a>
    </nav>

    <div class="icons">
        <div class="fas fa-search" id="search-btn"></div>
       
        <div class="fas fa-shopping-cart" id="cart-btn"></div>
        
        <div class="fas fa-bars" id="menu-btn"></div>
    
    </div>

    <div class="search-form">
        <input type="search" id="search-box" placeholder="search here...">
        <label for="search-box" class="fas fa-search"></label>
    </div>
   
   <!-- sản pa -->
    <div class="cart-items-container">
        <div class="cart-item">
            <span class="fas fa-times"></span>
            <img src="images/cart-item-1.png" alt="">
            <div class="content">
                <h3>cart item 01</h3>
                <div class="price">$15.99/-</div>
            </div>
        </div>
       
        <a href="#" class="btn">checkout now</a>
    </div>

</header>

<!-- header section ends -->

<!-- home section starts  -->

<section class="home" id="home">

    <div class="content">
        <h3>Chào Mừng bạn đã đến với Pets shop</h3>
        <p>Giáng Sinh đã đến rồi Pets Shop Chúc mọi người một mùa Giáng sinh an lành, một năm mới nhiều may mắn, một mùa đông thật ấm áp bên gia đình và người thương yêu.</p>
        <a href="login.jsp" class="btn">Get Pets Shop</a>
    </div>

</section>

<!-- home section ends -->

<!-- about section starts  -->

<section class="about" id="GT">

    <h1 class="heading"> <span>Về</span> Bác Sĩ </h1>

    <div class="row">

        <div class="image">
            <img src="image/tam.png" alt="">
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

<section class="about" id="Shop">

    <h1 class="heading"> <span>Về</span> Shop Pets </h1>

    <div class="row">

        <div class="image">
            <img src="image/shop.png" alt="">
        </div>

        <div class="content">
            <h3>Shop pet ?</h3>
            <p>Chuỗi Hệ Thống Cửa Hàng Uy Tín. Nhân Viên Nhiều Kinh Nghiệm. Khuyến Mãi Hấp Dẫn. Xem Ngay! Cửa Hàng Thú Cưng Pet Mart Chuyên Cung Cấp Những Sản Phẩm Chính Hãng Tốt Nhất Cho Thú Cưng. Chất Lượng Dịch Vụ 5 Sao. Dịch Vụ Uy Tín. Giá Luôn Tốt Nhất.</p>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Odit amet enim quod veritatis, nihil voluptas culpa! Neque consectetur obcaecati sapiente?</p>
            <a href="#" class="btn">learn more</a>
        </div>

    </div>

</section>

<!-- about section ends -->

<!-- menu section starts  -->

<section class="menu" id="menu">

   <!--   <h1 class="heading"> our <span>menu</span> </h1>
	<%
			if( !products.isEmpty()) {
				for (Product p : products) { %>
    <div class="box-container">

        <div class="box">
        	
            <img src="image/<%= p.getImage() %>" alt="">
            <h3 class="card-title"><%= p.getName() %></h3>
            <div class="price">Price: <%= p.getPrice() %> VNĐ <span>20.99</span></div>
            <a href="login.jsp" class="btn">add to cart</a>
        </div>
	<% 	}
			}
		%>
       

    </div>
	-->
</section>

<!-- menu section ends -->

<section class="products" id="products">

    <h1 class="heading"> our <span>sản phẩm quảng cáo</span> </h1>

    <div class="box-container">
  <%
			if( !GT.isEmpty()) {
				for (productGT g : GT) { %>
        <div class="box">
         
            <div class="icons">
           
                <a href="login.jsp" class="fas fa-shopping-cart"></a>
                <a href="#" class="fas fa-heart"></a>
                <a href="#blogs" class="fas fa-eye"></a>
            </div>
           
            <div class="image">
                <img src="imageGT/<%= g.getImage() %>" alt="">
            </div>
            <div class="content">
                 <h3 class="card-title"><%= g.getName() %></h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <div class="price"><%= g.getGia() %> VNĐ <span><%= g.getGiachinh() %> VNĐ</span></div>
                
            </div>
            <% 	}
			}
		%>
        </div>

     

    </div>

</section>

<!-- review section starts  -->

<section class="review" id="review">

    <h1 class="heading"> Bác Sĩ: <span>Của Pets Shops</span> </h1>

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
        </div>

    </div>

</section>

<!-- review section ends -->

<!-- contact section starts  -->

<section class="contact" id="contact">

    <h1 class="heading"> <span>calendar</span> us </h1>

    <div class="row">

       
        <form action="<%= request.getContextPath() %>/Add-lichGt" method="post">
            <h3>đăng kí lịch khám trực tuyến!!</h3>
            <div class="inputBox">
                <span class="fas fa-user"></span>
                <input type="text" placeholder="name Sen" name="nameGT">
            </div>
            <div class="inputBox">
                <span class="fas fa-phone"></span>
                <input type="number" placeholder="phone" name="phoneGT">
            </div>
            <div class="inputBox">
                <span class="fas fa-phone"></span>
                <input type="date" placeholder="Day of the examination" name="dateGT">
            </div>
             <div class="inputBox">
                <span class="fas fa-phone"></span>
                <input type="time" placeholder="Time of the examination" name="timeGT">
            </div>
             <div class="inputBox">
                <span class="fas fa-phone"></span>
                <input type="text" placeholder="medical condition" name="ghichuGT">
            </div>
            <input type="submit" value="Đăng kí" class="btn">
        </form>

    </div>

</section>

<!-- contact section ends -->

<!-- blogs section starts  -->

<section class="blogs" id="blogs">

    <h1 class="heading"> our <span>blogs</span> </h1>

    <div class="box-container">
	 <%
			if( !GT.isEmpty()) {
				for (productGT g : GT) { %>
        <div class="box">
            <div class="image">
                
                 <img src="imageGT/<%= g.getImage() %>" alt="">
            </div>
            <div class="content">
                <a href="login.jsp" class="title"><%= g.getName() %></a>
                <span>by admin / 21st may, 2021</span>
                <p><%= g.getChitiet() %>.</p>
               
               

			
				
            </div>
        </div>

       
	   <% 	}
			}
		%>
        
    </div>

</section>

<!-- blogs section ends -->
<!-- thông tin sản phẩm -->


<!-- kí hiệu  -->

<section class="footer">

    <div class="share">
        <a href="https://www.facebook.com/caonhatnhon.beo" class="fab fa-facebook-f"></a>
        <a href="https://twitter.com/nhon_beo" class="fab fa-twitter"></a>
        <a href="https://www.instagram.com/caonhatnhon/?fbclid=IwAR2n7dhamW5cQJYO9fsPKTwVB-954qBa9p_3mJQ1ZgfbQP6ZqmshSD6JenM" class="fab fa-instagram"></a>
        <a href="#" class="fab fa-linkedin"></a>
        <a href="#" class="fab fa-pinterest"></a>
    </div>

    <div class="links">
        <a href="#">home</a>
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