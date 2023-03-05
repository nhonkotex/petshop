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
<title>User</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/test.css">
<%@include file="include/head.jsp" %>
<%@include file="include/linkIndex.jsp" %>
</head>
<body>

	<%@include file="include/navbar.jsp" %>
	
	  <div class="image-gallery">
            <header><font color="black">chào bạn , ${sessionScope.auth }  </font></header>
            
        </div>
       <div class="card-header text-center">Nhận Xét về chúng tôi</div>
			<div class="card-body">
				
			<form action="<%= request.getContextPath() %>/Add-nhan-Xet" method="post">
				<div class="card-body">
                   <p>Name*</p>
					<input type="text" name="name" class="form-control" placeholder="User name" required>
				
						
					<p>Về dịch vụ khám</p>
					<input type="text" placeholder="phone" class="form-control" name="dv" >
					
						
					<p>Chất lượng sản phẩm</p>
					<input type="text" placeholder="date" class="form-control" name="sp" >
					
					<p>thái độ của nhân viên</p>
					<input type="text" placeholder="time" class="form-control" name="nv" >
					
					<p>Bạn muốn đặt câu hỏi gì về Shop Pets </p>
					<input type="text" placeholder="Tình trạng" class="form-control" name="nx" required>
					</div>
					
					<div class="text-center">
					<h1> Cảm ơn bạn đã nhận xét về dịch vụ của chúng tôi</h1>
					<p> chúng tôi sẽ tiếp thu sự đóng góp của bạn và thay đổi trong thời gian sớm nhất có thể </p>
					<p> chúng tôi sẽ phản hồi bạn sớm nhất có thể</p>
					
						<button type="submit" class="btn btn-primary">Nhận xét</button>
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
    <!-- Swiper JS -->
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>


    <%@include file="include/hieuung.jsp" %>
   <script src="js/script.js"></script>
</body>
</html>