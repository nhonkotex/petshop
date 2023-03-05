<%@page import="do_an2022.model.*"%>
<%@page import="do_an2022.connection.DbCon"%>
<%@page import="do_an2022.dao.ThongbaoDao"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
      <%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("auth", auth);
}

ThongbaoDao tb = new ThongbaoDao(DbCon.getConnetion());
List<Thongbao> TB = tb.getAllThongbao();
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thông báo</title>
<link rel="stylesheet" href="css/test.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
   
<%@include file="include/head.jsp" %>
<%@include file="include/linkIndex.jsp" %>
</head>
<body>

	<%@include file="include/navbar.jsp" %>
	
	  <div class="image-gallery">
            <header><font color="black">Thông Báo của Shop </font></header>
            
        </div>
    
	<table class="table table-light">
			<thead>
				<tr>
					
					<th scope="col">Chủ đề</th>
					<th scope="col">Nội dung 1</th>
					<th scope="col">Nội dung 2</th>
					
				</tr>
			</thead>
			<tbody>
			
				<%
			if(!TB.isEmpty()) {
				for (Thongbao t : TB) {		
				%>
					<tr>
						
						<td><%=t.getNameTB() %></td>
						<td><%=t.getNdC() %></td>
						<td><%=t.getNdP() %></td>
					
						
					</tr>
					
				<%}	
			}
			%>
			</tbody>
					</table>
<section class="about" id="Shop1">

    <h1 class="heading"> <span>Về</span> Shop Pets </h1>
<%
			if(!TB.isEmpty()) {
				for (Thongbao t : TB) {		
				%>
    <div class="row">
	
        <div class="image">
            <img src="image/<%=t.getImage() %>" alt="">
        </div>

        <div class="content">
            <h3><%=t.getNameTB() %></h3>
            <p><%=t.getNdC() %>️</p>
             <a href="product.jsp" class="btn">Những món đồ mình cần</a>
            <p><%=t.getNdP() %> </p>
            <a href="#" class="btn">xem thêm</a>
           
        </div>

    </div>

				<%}	
			}
			%>
</section>
					
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