<%@page import="do_an2022.model.Adduser"%>
<%@page import="do_an2022.connection.DbCon"%>
<%@page import="do_an2022.dao.AdduserDao"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <%
 
  AdduserDao Ql = new AdduserDao(DbCon.getConnetion());
  List<Adduser> user = Ql.getAllUser1();
  
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
            <header> Sản Phẩm của Shop Pet </header>
        </div>
	<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Password</th>
					<th scope="col">Số điện Thoại</th>
					<th scope="col">Địa chỉ</th>
					<th scope="col">Xoá TK</th>
					
				</tr>
			</thead>
			<tbody>
			
				<%
			if(!user.isEmpty()) {
				for (Adduser q : user) {		
				%>
					<tr>
						<td><%=q.getId() %></td>
						<td><%=q.getName() %></td>
						<td><%=q.getEmail() %></td>
						<td><%=q.getPassword() %></td>
						<td><%=q.getSodienthoai() %></td>
						<td><%=q.getDiachi() %></td>
						<td><a class="btn btn-sm btn-danger" href="delete-user?id=<%=q.getId() %>">Xoá
						</a></td>
						
					</tr>
					
				<%}	
			}
			%>
			</tbody>
					</table>
	<form>
						
</form>

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