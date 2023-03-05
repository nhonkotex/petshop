<%@page import="do_an2022.model.*"%>
<%@page import="do_an2022.connection.DbCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("auth", auth);
}


    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dat lich</title>
<%@include file="include/head.jsp" %>
<%@include file="include/linkIndex.jsp" %>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/test.css">



</head>
<body>
<%@include file="include/navbar.jsp" %>
<div class="container">
	
		
               
                <div class="card-header text-center">Đăng kí Lịch</div>
			<div class="card-body">
				
			<form action="<%= request.getContextPath() %>/Add-lich" method="post">
				<div class="card-body">
                   <p>Tên Thú cưng</p>
					<input type="text" name="name" class="form-control" placeholder="User name">
				
						
					<p>số điện thoại</p>
					<input type="text" placeholder="phone" class="form-control" name="phone" required>
					
						
					<p>Ngày khám</p>
					<input type="date" placeholder="date" class="form-control" name="date" required>
					
					<p>Giờ khám </p>
					<input type="time" placeholder="time" class="form-control" name="time" required>
					
					<p>Tình Trạng Bệnh của Pets </p>
					<input type="text" placeholder="Tình trạng" class="form-control" name="ghichu" required>
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Đăng ký</button>
				</div>
					</div>
					</form>
      </div>
      </div>
		
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