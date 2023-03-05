<%@page import="do_an2022.model.*"%>
<%@page import="do_an2022.connection.DbCon"%>
<%@page import="do_an2022.dao.ThongbaoDao"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm Thông Báo</title>
<link rel="stylesheet" href="css/test.css">
<%@include file="include/head.jsp" %>
<%@include file="include/linkIndex.jsp" %>
 <%


ThongbaoDao tb = new ThongbaoDao(DbCon.getConnetion());
List<Thongbao> TB = tb.getAllThongbao();
    %>



</head>
<body>
<%@include file="include/navbarAdmin.jsp" %>

	
	 <div class="image-gallery">
            <header><font color="black">Thông Báo Đã đăng </font></header>
            
        </div>
    
	<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Chủ đề</th>
					<th scope="col">Nội dung 1</th>
					<th scope="col">Nội dung 2</th>
					<th scope="col">Xoá Thông Báo</th>
				 
					
				</tr>
			</thead>
			<tbody>
			
				<%
			if(!TB.isEmpty()) {
				for (Thongbao t : TB) {		
				%>
					<tr>
						<td><%=t.getId() %></td>
						<td><%=t.getNameTB() %></td>
						<td><%=t.getNdC() %></td>
						<td><%=t.getNdP() %></td>
						<td><a class="btn btn-sm btn-danger" href="xoa-thongbao?id=<%=t.getId()%>">Xoá</a></td>
						
					</tr>
					
				<%}	
			}
			%>
			</tbody>
					</table>
					
	<div class="container">
		  <div class="swiper-slide card">
                <div class="card-content">
              <h1> Thông Báo </h1>
                  </div>
                <div class="card-header text-center">Đăng kí Thông báo  mới</div>
			<div class="card-body">
				
			<form action="<%= request.getContextPath() %>/add-thongbao" method="post">
                   <p>Chủ đề</p>
					<input type="text" name="name" class="form-control" placeholder="vd: Chó pull">
				
						
					<p>Nội dung chính</p>
					<input type="text" placeholder="Hãy viết những gì bạn muốn " class="form-control" name="ndc" required>
					
						
					<p>Nội dung phụ</p>
					<input type="text" placeholder="Hãy viết những gì bạn muốn " class="form-control" name="ndp" required>
					
					<p>Ảnh thông báo </p>
					<input type="text" placeholder="ảnh bạn muốn tải " class="form-control" name="image" >
					
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">UP</button>
				
					</div>
					</form>
      </div>
      </div>
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
		
	
	
	 <%@include file="include/hieuung.jsp" %>
	
</body>
</html>