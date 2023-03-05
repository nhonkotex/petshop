<%@page import="do_an2022.connection.DbCon"%>
<%@page import="do_an2022.dao.ProductDao"%>
<%@page import="do_an2022.dao.UserDao"%>
<%@page import="do_an2022.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("auth", auth);
}
UserDao us = new UserDao(DbCon.getConnetion());
List<User> user = us.getAllUser();

ProductDao pb = new ProductDao(DbCon.getConnetion());
List<Product> products = pb.getAllProducts();


ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
	
}

    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product</title>
  <link rel="stylesheet" href="css/test.css">
<%@include file="include/head.jsp" %>
<%@include file="include/linkIndex.jsp" %>
</head>
<body>
		<%@include file="include/navbar.jsp" %>
	
		
	  <div class="image-gallery">
            <header><font color="black"> Các sản phẩm của shop pets  </font></header>
        </div>
        
       
		 <div class="swiper mySwiper container">
            <div class="swiper-wrapper content">
      
           <div class="container">
		
		<div class="row">
		<%
			if( !products.isEmpty()) {
				for (Product p : products) { %>
					<div class="col-md-3 my-3">
					<div class="card w-100" style="width: 18rem;">
						<img class="card-img-top" src="image-SP/<%= p.getImage() %>" alt="Card image cap">
						<div class="card-body">
						<h5 class="card-title"><%= p.getName() %></h5>
						<h6 clas="price">Price: <%= p.getPrice() %> VNĐ</h6>
						<h6 clas="category">Category: <%= p.getCategory() %></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a href="Add-to-cart?id=<%= p.getId() %>" class="btn btn-primary">add to card</a>
							<a href="Order-Now?quantity=1&id=<%=p.getId()%>" class="btn btn-primary">Buy Now</a>
						</div>
						</div>
					</div>
				</div>
			<% 	}
			}
		%>
			
			<section class="footer">

    <div class="share">
        <a href="#" class="fab fa-facebook-f"></a>
        <a href="#" class="fab fa-twitter"></a>
        <a href="#" class="fab fa-instagram"></a>
      
        <a href="#" class="fab fa-pinterest"></a>
    </div>

    <div class="links">
        <a href="index.jsp">home</a>
        <a href="Datlich.jsp">Đặt Lịch</a>
        <a href="Thongbao.jsp">Thông báo</a>
        <a href="Order">Đơn hàng của bạn</a>
        <a href="product.jsp">sản phẩm</a>
        <a href="trangcanhan.jsp">about me</a>
        
    </div>

   

    <div class="credit">created by <span>Cao Nhật Nhơn</span> | all rights reserved</div>

</section>
  
	
	 <%@include file="include/hieuung.jsp" %>
</body>
</html>