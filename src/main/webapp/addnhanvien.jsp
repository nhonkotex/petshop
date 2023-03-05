
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm Nhân Viên</title>
<%@include file="include/head.jsp" %>
<%@include file="include/linkIndex.jsp" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/test.css">




</head>
<body>
<%@include file="include/navbarAdmin.jsp" %>
<div class="container">
	
		 
                <div class="card-header text-center">Thêm Nhân viên</div>
			<div class="card-body">
                
				
			<form action="<%= request.getContextPath() %>/add-nhanvien" method="post">
                   <p>Tên Nhân viên</p>
					<input type="text" name="nameNV" class="form-control" placeholder="vd: Nguyễn VĂn A">
				
						
					<p>Chúc vụ</p>
					<input type="text" placeholder="vd: Tư Vấn Viên" class="form-control" name="chucvu" required>
					
						
					<p>số điện thoại</p>
					<input type="text" placeholder="Phone" class="form-control" name="sdt" required>
					
					<p>Số CMDN/CCCD </p>
					<input type="text" placeholder="CMND" class="form-control" name="soCMND" required>
					
					<p>Địa chỉ </p>
					<input type="text" placeholder="address" class="form-control" name="diachi" required>
					
					<p>Lương </p>
					<input type="text" placeholder="vd: 100.000 VNĐ" class="form-control" name="luong" required>
					
					<p>Note </p>
					<input type="text" placeholder="Ghi chú" class="form-control" name="note" required>
					
					<p>sở trường </p>
					<input type="text" placeholder="vd: Khám bệnh" class="form-control" name="sotruong" required>
					
					<p>ảnh của Nhân viên </p>
					<input type="text" placeholder=".jpn" class="form-control" name="image" required>
					
					</div>
					<div class="text-center">
						 
						<button type="submit" class="btn ">Thêm</button>
						<a href="Nhanvien.jsp" class="btn">Exit</a>
				
					</div>
					</form>
      
      
		
	
	
	 <%@include file="include/hieuung.jsp" %>
	
</body>
</html>