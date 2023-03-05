<%@page import="do_an2022.connection.DbCon"%>
<%@page import="do_an2022.dao.ProductDao"%>
<%@page import="do_an2022.model.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
DecimalFormat dcf = new DecimalFormat("#.##");
request.setAttribute("dcf", dcf);
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("auth", auth);
}
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
List<Cart> cartProduct = null;
if (cart_list != null) {
	ProductDao pDao = new ProductDao(DbCon.getConnetion());
	cartProduct = pDao.getCartProducts(cart_list);
	double total = pDao.getTotalCartPrice(cart_list);
	request.setAttribute("total", total);
	request.setAttribute("cart_list", cart_list);
}


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="include/head.jsp" %>
<%@include file="include/linkIndex.jsp" %>

</head>
<body>
		<%@include file="include/navbar.jsp" %>
	  <div class="image-gallery">
            <header><font color="black">Giỏ hàng </font></header>
        </div>
		<div class="container my-3">	
		<div class="container my-3">
		
		<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Name</th>
					<th scope="col">Category</th>
					<th scope="col">Price</th>
					<th scope="col">Buy Now</th>
					<th scope="col">Cancel</th>
				</tr>
			</thead>
			<tbody>
			<%
				if (cart_list != null) {
					for (Cart c : cartProduct) { %>
						<tr>
						<td><%= c.getName() %></td>
						<td><%= c.getCategory() %></td>
						<td><%= dcf.format(c.getPrice())%></td>
						<td>
							<form action="Order-Now" method="post" class="form-inline">
								<input type="hidden" name="id" value="<%= c.getId() %>" class="form-input">
								<div class="form-group d-flex justify-content-between"> 
									<a class="btn btn-ms btn-incre" href="QuantityIncDec?action=dec&id=<%= c.getId() %>"><i class="fas fa-minus-square"></i></a>
									
									<input type="text" name="quantity" class="form-control"  value="<%=c.getQuantity()%>" readonly> 
									<a class="btn btn-sm btn-decre" href="QuantityIncDec?action=inc&id=<%= c.getId() %>"><i class="fas fa-minus-square"></i></a>
									
								</div>
								<button type="submit" class="btn btn-primary btn-sm">Buy</button>
							</form>
							</td>
							<td>
							<a class="btn btn-sm btn-danger" href="xoa-khoiGH?id=<%=c.getId() %>">Loại bỏ</a>
							</td>
					</tr>
						<%}
					}
				%>
				
			</tbody>
		</table>
		<div class="d-flex py-3">
		<h3>Tổng tiền sản phẩm:  ${(total>0)?dcf.format(total):0} VNĐ</h3> 
		<a class="mx-3 btn btn-primary" href="Tong-tien">Thanh Toán</a></div>
		<p>* Lưu ý các sản phẩm trên không có số 000 ở sau có nghĩa sản phẩm của bạn là hàng triệu nhé.</p>
			</div>
			</div>
			
	
	
	
	 <%@include file="include/hieuung.jsp" %>
</body>
</html>