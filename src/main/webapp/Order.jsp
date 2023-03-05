<%@page import="java.text.DecimalFormat"%>
<%@page import="do_an2022.connection.DbCon"%>
<%@page import="do_an2022.dao.OrderDao"%>
<%@page import="do_an2022.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%
DecimalFormat dcf = new DecimalFormat("#.##");
request.setAttribute("dcf", dcf);
User auth = (User) request.getSession().getAttribute("auth");
List<Order> orders = null;
if (auth != null) {
	OrderDao orderDao  = new OrderDao(DbCon.getConnetion());
	orders = orderDao.userOrders(auth.getId());

}else{
	//response.sendRedirect("login.jsp");
}


ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order</title>
<%@include file="include/head.jsp" %>
<%@include file="include/linkIndex.jsp" %>
 <link rel="stylesheet" href="css/test.css">
</head>
<body>
	<%@include file="include/navbar.jsp" %>
	<div class="container">
		<div class="card-header my-3">All Orders</div>
		<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Date</th>
					<th scope="col">Name</th>
					<th scope="col">Category</th>
					<th scope="col">Quantity</th>
					<th scope="col">Price</th>
					<th scope="col">Cancel</th>
				</tr>
			</thead>
				<tbody>
			
			<%
			if(orders != null){
				for(Order o:orders){%>
					<tr>
						<td><%=o.getDate() %></td>
						<td><%=o.getName() %></td>
						<td><%=o.getCategory() %></td>
						<td><%=o.getQuantity() %> </td>
						<td><%=dcf.format(o.getPrice()) %> VNĐ</td>
						<td><a class="btn btn-sm btn-danger" href="Huy-don?id=<%=o.getOrderId()%>">Cancel Order</a></td>
					</tr>
				<%}
			}
			%>
			
			</tbody>		
		
	</table>
	</div>
	
	<div class="container">
		<div class="card-header my-3">lịch khám của bạn sắp tới!!!</div>
		<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Date</th>
					<th scope="col">Name</th>
					<th scope="col">Price</th>
					<th scope="col">Cancel</th>
				</tr>
			</thead>
				<tbody>
			
			
			
			</tbody>		
		
	</table>
	</div>
	
	<section class="footer">

    <div class="share">
        <a href="#" class="fab fa-facebook-f"></a>
        <a href="#" class="fab fa-twitter"></a>
        <a href="#" class="fab fa-instagram"></a>
      
        <a href="#" class="fab fa-pinterest"></a>
    </div>

    <div class="links">
        <a href="index.jsp">home</a>
        <a href="Datlich.jsp">Đặt Lịch</a>
        <a href="Thongbao.jsp">Thông báo</a>
        <a href="Order.jsp">Đơn hàng của bạn</a>
        <a href="product.jsp">sản phẩm</a>
        <a href="trangcanhan.jsp">about me</a>
        
    </div>

   

    <div class="credit">created by <span>Cao Nhật Nhơn</span> | all rights reserved</div>

</section>
	
 <%@include file="include/hieuung.jsp" %>
</body>
</html>