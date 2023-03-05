<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/test.css">
    <%@include file="include/head.jsp" %>
<%@include file="include/linkIndex.jsp" %>
</head>
<body>
	<div class="card-header text-center">Trả lời câu hỏi</div>
			<div class="card-body">
				
			<form action="<%= request.getContextPath() %>/add-traloi" method="post">
				<div class="card-body">
					<p>tên người hỏi:</p>
					<input type="text" name="user" class="form-control" placeholder="name user" required>
					
					<p>Câu hỏi:</p>
					<input type="text" name="cauhoi" class="form-control" placeholder="Bạn hãy copy câu hỏi của khách hàng dán vào đây" required>
					
                    <p>Câu trả lời</p>
					<input type="text" name="traloi" class="form-control" placeholder="Câu trả lời" required>
				
						
					
					
					<div class="text-center">
					<h1> hãy trã lời các câu hỏi của khách hàng nhiệt tình nhé</h1>
					<p> *lưu ý hãy copy tên của khách hàng hỏi và câu hỏi lại trước khi trả lời nhé  </p>
				
					
						<button type="submit" class="btn btn-primary">Trả lời</button>
						 <a href="Nhanxet.jsp" class="btn">Exit</a>
				</div>
					</div>
					</form>
      </div>
</body>
</html>