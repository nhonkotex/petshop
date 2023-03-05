<%@page import="do_an2022.model.Nhanxet"%>
<%@page import="do_an2022.connection.DbCon"%>
<%@page import="do_an2022.dao.NhanxetDao"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
      <%

      NhanxetDao nx = new NhanxetDao(DbCon.getConnetion());
	  List<Nhanxet> NX = nx.getAllNhanxet();
	  
	  NhanxetDao tl = new NhanxetDao(DbCon.getConnetion());
	  List<Nhanxet> TL = tl.getAllTraloi();
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thông báo</title>
<link rel="stylesheet" href="css/test.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/test.css">
<%@include file="include/head.jsp" %>
<%@include file="include/linkIndex.jsp" %>
</head>
<body>

	<%@include file="include/navbarAdmin.jsp" %>
	
	  <div class="image-gallery">
            <header><font color="black">chào bạn , ${sessionScope.auth }  </font></header>
            
        </div>
    
	<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Name người NX</th>
					<th scope="col">DV Khám</th>
					<th scope="col">CLSP</th>
					<th scope="col">Thái Độ NV</th>
					<th scope="col">Câu hỏi</th>
					
					<th scope="col">Trả lời</th>
					<th scope="col">Xoá</th>
				</tr>
			</thead>
			<tbody>
			
				<%
			if(!NX.isEmpty()) {
				for (Nhanxet n : NX) {		
				%>
					<tr><td><%=n.getId() %></td>
						<td><%=n.getName() %></td>
						<td><%=n.getDv() %></td>
						<td><%=n.getSp() %></td>
						<td><%=n.getNv() %></td>
						<td><%=n.getNx() %></td>
						
						<td><a class="btn btn-sm btn-danger" href="traloinhanxet.jsp">Trả lời</a></td>
						<td><a class="btn btn-sm btn-danger" href="delete-nhanxet?id=<%=n.getId()%>">Xoá</a></td>
					</tr>
					
				<%}	
			}
			%>
			</tbody>
					</table>
					<div class="card-header ">Danh Mục Sản Phẩm của SHOP PETS </div>
			<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Name người NX</th>
					<th scope="col">Câu hỏi</th>
					<th scope="col">Câu trả lời </th>
					<th scope="col">Xoá</th>
				</tr>
			</thead>
			<tbody>
			
				<%
			if(!TL.isEmpty()) {
				for (Nhanxet l : TL) {		
				%>
					<tr><td><%=l.getId() %></td>
						<td><%=l.getName() %></td>
						<td><%=l.getNx() %></td>
						<td><%=l.getTraloi() %></td>
						
						
						<td><a class="btn btn-sm btn-danger" href="delete-traloi?id=<%=l.getId()%>">Xoá</a></td>
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
   <script src="js/script.js"></script>
</body>
</html>