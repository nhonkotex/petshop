<%@page import="do_an2022.model.*"%>
<%@page import="do_an2022.connection.DbCon"%>
<%@page import="do_an2022.dao.ProductDao"%>
<%@page import="do_an2022.dao.productGTDao"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
  ProductDao dl = new ProductDao(DbCon.getConnetion());
  List<Product> quanly = dl.getAllProducts();
  
  productGTDao GT = new productGTDao(DbCon.getConnetion());
  List<productGT> quanlyGT = GT.getAllproductGT();
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
            <header> Sản Phẩm của Shop Pet </header>
        </div>
	<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Name</th>
					<th scope="col">category</th>
					<th scope="col">price</th>
					<th scope="col">image</th>
					<th scope="col">Xoá</th>
				</tr>
			</thead>
			<tbody>
			
				<%
			if(!quanly.isEmpty()) {
				for (Product q : quanly) {		
				%>
					<tr>
						<td><%=q.getId() %></td>
						<td><%=q.getName() %></td>
						<td><%=q.getCategory() %></td>
						<td><%=q.getPrice() %></td>
						<td><%=q.getImage() %></td>
						<td><a class="btn btn-sm btn-danger" href="delete-product?id=<%=q.getId()%>">Xoá</a></td>
					</tr>
					
				<%}	
			}
			%>
			</tbody>
					</table>
	<form>
							<div class="text-center">
                                <a href="addproduct.jsp" class="btn btn-primary">Thêm sản phẩm mới</a>
                            </div>
</form>


<div class="image-gallery">
            <header> Sản Phẩm Giới Thiệu của Shop Pet </header>
        </div>
	<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Name</th>
					<th scope="col">Giá Khuyến Mãi </th>
					<th scope="col">Giá Chính</th>
					<th scope="col">image</th>
					<th scope="col">Xoá</th>
				</tr>
			</thead>
			<tbody>
			
				<%
			if(!quanlyGT.isEmpty()) {
				for (productGT g : quanlyGT) {		
				%>
					<tr>
						<td><%=g.getId() %></td>
						<td><%=g.getName() %></td>
						<td><%=g.getGia() %></td>
						<td><%=g.getGiachinh() %></td>
						<td><%=g.getImage() %></td>
						<td><a class="btn btn-sm btn-danger" href="delete-productGT?id=<%=g.getId()%>">Xoá</a></td>
					</tr>
					
				<%}	
			}
			%>
			</tbody>
					</table>
	<form>
							
                            <div class="text-center">
							
							<a href="addproductGT.jsp" class="btn btn-primary">Thêm sản phẩm mới</a>
							
						</div>
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