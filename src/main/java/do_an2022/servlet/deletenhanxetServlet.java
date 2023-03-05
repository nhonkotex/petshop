package do_an2022.servlet;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import do_an2022.connection.DbCon;
import do_an2022.dao.NhanxetDao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

/**
 * Servlet implementation class deletenhanxetServlet
 */
public class deletenhanxetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try(PrintWriter out = response.getWriter()) {
			String id = request.getParameter("id");
			
			if(id != null) {
				
				NhanxetDao nhanxetDao  = new NhanxetDao(DbCon.getConnetion());
				nhanxetDao.xoaNX(Integer.parseInt(id));
				
			}
			response.sendRedirect("Nhanxet.jsp");
		}
		catch (ClassNotFoundException|SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
			}
		
	}

	