<%@page import="do_an2022.model.*"%>
<%@page import="do_an2022.connection.DbCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm Sản phẩm GT</title>
<%@include file="include/head.jsp" %>
<%@include file="include/linkIndex.jsp" %>




</head>
<body>
<%@include file="include/navbarAdmin.jsp" %>
<div class="container">
	
		
                <div class="card-header text-center">Thêm các mặt hàng nổi bật</div>
			<div class="card-body">
				
			<form action="<%= request.getContextPath() %>/add-productGT" method="post">
                   <p>Tên mặt hàng</p>
					<input type="text" name="nameGT" class="form-control" placeholder="vd: Chó pull">
				
						
					<p>Thể loại</p>
					<input type="text" placeholder="vd: gia chinh" class="form-control" name="giaGT" required>
					
						
					<p>Giá sản phẩm</p>
					<input type="text" placeholder="vd: gia ao" class="form-control" name="giachinhGT" required>
					
					<p>Ảnh sản phẩm </p>
					<input type="text" placeholder="vd: cho.jpg" class="form-control" name="imageGT" required>
					
					<p>chi tiết sản phẩm </p>
					<input type="text" placeholder="chi tiet" class="form-control" name="chitiet" required>
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Thêm sản phẩm</button>
						<a href="quanlyproduct.jsp" class="btn">Exit</a>
					</div>
					</form>
      </div>
     
		
	
	
	 <%@include file="include/hieuung.jsp" %>
	
</body>
</html>