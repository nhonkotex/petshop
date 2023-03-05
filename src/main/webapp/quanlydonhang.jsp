<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="do_an2022.model.*"%>
<%@page import="do_an2022.connection.DbCon"%>
<%@page import="do_an2022.dao.OrderDao"%>
<%@page import="java.util.*"%>
<%
  OrderDao dh = new OrderDao(DbCon.getConnetion());
  List<Order> donhang = dh.getAllOrder();
  
  
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> PETS SHOP </title>
 <link rel="stylesheet" href="css/test.css">
<%@include file="include/head.jsp" %>
<%@include file="include/linkIndex.jsp" %>
</head>
<body>

	<%@include file="include/navbarAdmin.jsp" %>
	 
                
	 <div class="image-gallery">
            <header>All đơn hàng SHOP PETS </header>
        </div>
	<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Id Sản phẩm</th>
					<th scope="col">Id Khách</th>
					<th scope="col">Số lượng</th>
					<th scope="col">Ngày mua</th>
					<th scope="col">Đã Giao</th>
					<th scope="col">chỉnh sửa</th>
					
				</tr>
			</thead>
			<tbody>
				<%
			if(!donhang.isEmpty()) {
				for (Order l : donhang) {		
				%>
					<tr>
						<td><%=l.getOrderId() %></td>
						<td><%=l.getId() %></td>
						<td><%=l.getUid() %></td>
						<td><%=l.getQuantity() %></td>
						<td><%=l.getDate() %></td>
						<td><a class="btn btn-sm btn-danger" href="delete-Donhang?id=<%=l.getOrderId() %>">Xác Nhận</a></td>
						<td> <a class="btn btn-sm btn-danger" href="UpdateServlet?date=#">sửa</a></td>
						
					</tr>
					
				<%}	
			}
			%>
			
			</tbody>
					</table>
	
<section class="footer">
		
		    <div class="share">
		        <a href="https://www.facebook.com/caonhatnhon.beo" class="fab fa-facebook-f"></a>
		        <a href="https://twitter.com/nhon_beo" class="fab fa-twitter"></a>
		        <a href="https://www.instagram.com/caonhatnhon/?fbclid=IwAR0iL6XO9rdrdV1IjXEpUri9w-nY79prtiLsbBnFy2k2e4Xu5R1gR64aKvg" class="fab fa-instagram"></a>
		      
		        <a href="https://github.com/nhonkotex/cnpm_nhon4" class="fab fa-github"></a>
		    </div>
		
		    <div class="links">
		        <a href="Admin.jsp">home</a>
		        <a href="lichkham.jsp">Lịch khám</a>
		        <a href="quanlyproduct.jsp">Sản Phẩm</a>
		        <a href="quanlydonhang.jsp">Đơn Hàng</a>
		        <a href="Addthongbao.jsp">Thông Báo</a>
		        <a href="quanlyUser.jsp">User</a>
		        <a href="Nhanvien.jsp">Nhân Viên</a>
		        <a href="Nhanxet.jsp">Nhận xét</a>
		    </div>
		
		   
		
		    <div class="credit">created by <span>Cao Nhật Nhơn</span> | all rights reserved</div>
		
		</section>




    <!-- Swiper JS -->
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

   

    <%@include file="include/hieuung.jsp" %>
   
</body>

</html>