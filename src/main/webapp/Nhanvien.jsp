<%@page import="do_an2022.model.Nhanvien"%>
<%@page import="do_an2022.connection.DbCon"%>
<%@page import="do_an2022.dao.NhanvienDao"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
 
  NhanvienDao NV = new NhanvienDao(DbCon.getConnetion());
  List<Nhanvien> nhanvien = NV.getAllNhanvien();
  
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> PETS SHOP </title>
<link rel="stylesheet" href="css/test.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<%@include file="include/head.jsp" %>
<%@include file="include/linkIndex.jsp" %>

</head>
<body>

	<%@include file="include/navbarAdmin.jsp" %>
	
	 <div class="image-gallery">
            <header> Nhân Viên Của Pets </header>
        </div>
	<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Name</th>
					<th scope="col">Chức vụ</th>
					<th scope="col">Số Điện Thoại</th>
					<th scope="col">Số CMND</th>
					<th scope="col">Địa chỉ</th>
					<th scope="col">Lương</th>
					<th scope="col">Nhân Viên Đã Nghỉ</th>
				</tr>
			</thead>
			<tbody>
			
				<%
			if(!nhanvien.isEmpty()) {
				for (Nhanvien q : nhanvien) {		
				%>
					<tr>
						<td><%=q.getId() %></td>
						<td><%=q.getNameNV() %></td>
						<td><%=q.getChucvu() %></td>
						<td><%=q.getSdt() %></td>
						<td><%=q.getSoCMND() %></td>
						<td><%=q.getDiachi() %></td>
						<td><%=q.getLuong() %></td>
						<td><a class="btn btn-sm btn-danger" href="delete-nhanvien?id=<%=q.getId()%>">Xoá</a></td>
						<td><a class="btn btn-sm btn-danger" href="#menu">xem thêm</a></td>
					</tr>
					
				<%}	
			}
			%>
			
			</tbody>
			 
					</table>
							<div class="text-center">
                                <a href="addnhanvien.jsp" class="btn btn-primary">Thêm Nhân viên mới </a>
                            </div>
					
	<form>
						
</form>

	<!--nhân viên của shop -->
<section class="menu" id="menu">

    <h1 class="heading"> our <span>Chi tiết các nhân viên</span> </h1>

    <div class="box-container">
	<%
			if(!nhanvien.isEmpty()) {
				for (Nhanvien q : nhanvien) {		
				%>
        <div class="box">
            <img src="imageNV/<%= q.getImage() %>" alt="">
            <h3><%= q.getNameNV() %></h3>
            <span>Chúc Vụ: <%=q.getChucvu() %> </span> <br>
             <span>Sở trường: <%= q.getSotruong() %></span>
             <p>Note: <%= q.getNote() %> </p>
             
             
           
        </div>

     <% 	}
			}
		%>

    </div>

</section>

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
		        <a href="#">Thông Báo</a>
		        <a href="quanlyUser.jsp">User</a>
		        <a href="#">Nhân Viên</a>
		        <a href="#">Nhận xét</a>
		    </div>
		
		   
		
		    <div class="credit">created by <span>Cao Nhật Nhơn</span> | all rights reserved</div>
		
		</section>
		


    <!-- Swiper JS -->
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

   

    <%@include file="include/hieuung.jsp" %>
   
</body>
</html>