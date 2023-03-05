<%@page import="do_an2022.model.*"%>
<%@page import="do_an2022.connection.DbCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dat lich</title>
<%@include file="include/head.jsp" %>
<%@include file="include/linkIndex.jsp" %>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
   


</head>
<body>
<%@include file="include/navbarAdmin.jsp" %>
<div class="container">
	
               
               <div class="card-header text-center">Thêm sản phẩm</div>
			<div class="card-body">
				
			<form action="<%= request.getContextPath() %>/Add-product" method="post">
                   <p>Tên mặt hàng</p>
					<input type="text" name="name" class="form-control" placeholder="vd: Chó pull">
				
						
					<p>Thể loại</p>
					<input type="text" placeholder="vd: thú cưng" class="form-control" name="category" required>
					
						
					<p>Giá sản phẩm</p>
					<input type="text" placeholder="vd: 100" class="form-control" name="price" required>
					
					<p>Ảnh sản phẩm </p>
					<input type="text" placeholder="vd: cho.jpg" class="form-control" name="image" required>
					
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