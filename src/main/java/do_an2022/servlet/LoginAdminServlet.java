package do_an2022.servlet;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import do_an2022.connection.DbCon;
import do_an2022.dao.AdminDao;
import do_an2022.model.Admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

/**
 * Servlet implementation class LoginAdminServlet
 */
public class LoginAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("loginAdmin.jsp");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
			String email = request.getParameter("admin-email");
			String password = request.getParameter("admin-password");
			
			try {
				AdminDao tdao = new AdminDao(DbCon.getConnetion());
				Admin user1 = tdao.adminLogin(email, password);
			
			if(user1 != null) {
					request.getSession().setAttribute("auth", user1);
					response.sendRedirect("Admin.jsp");
				
					
					
			} else {
				out.println("<h3 style='color:crimson; text-align: center'>Bạn đã sai mật khẩu.!!! </h3>");
				out.println("<h4 style='text-align: center'><a href='loginAdmin.jsp'> Mời bạn quay lại đăng nhập nhé.</a> </h4>");
			}
			
			} catch (ClassNotFoundException | SQLException e) {
				
				e.printStackTrace();
			}
			
		
		}
	}

}
