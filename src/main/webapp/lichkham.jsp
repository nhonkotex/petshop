<%@page import="do_an2022.model.*"%>
<%@page import="do_an2022.connection.DbCon"%>
<%@page import="do_an2022.dao.AddLichDao"%>
<%@page import="do_an2022.dao.AddlichGTDao"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
  AddLichDao dl = new AddLichDao(DbCon.getConnetion());
  List<AddLich> lichkham = dl.getAllLich();
  
  AddlichGTDao gt = new AddlichGTDao(DbCon.getConnetion());
  List<AddLich> lichgt = gt.getAllLichGT();
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
            <header>Lịch Khám Của SHOP PETS </header>
        </div>
	<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Name</th>
					<th scope="col">Phone</th>
					<th scope="col">Ngày khám</th>
					<th scope="col">Giờ Khám</th>
					<th scope="col">Tình Hình Bệnh</th>
					<th scope="col">Tình trạng Khám</th>
					<th scope="col">Sửa</th>
				</tr>
			</thead>
			<tbody>
			
				<%
			if(!lichkham.isEmpty()) {
				for (AddLich l : lichkham) {		
				%>
					<tr>
						<td><%=l.getId() %></td>
						<td><%=l.getName() %></td>
						<td><%=l.getSdt() %></td>
						<td><%=l.getNgay() %></td>
						<td><%=l.getGio() %></td>
						<td><%=l.getGhiChu() %></td>
						<td><a class="btn btn-sm btn-danger" href="delete-lich?id=<%=l.getId() %>">đã khám</a></td>
						<td> <a class="btn btn-sm btn-danger" href="Update-lich?ghichu=<%=l.getGhiChu() %>">sửa</a></td>
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