package do_an2022.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import do_an2022.connection.DbCon;
import do_an2022.dao.ThongbaoDao;

/**
 * Servlet implementation class xoathongbaoServlet
 */
public class xoathongbaoServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try(PrintWriter out = response.getWriter()) {
			String id = request.getParameter("id");
			
			if(id != null) {
				
				ThongbaoDao productDao = new ThongbaoDao(DbCon.getConnetion());
				productDao.XoaTB(Integer.parseInt(id));
				
			}
			response.sendRedirect("Addthongbao.jsp");
		}
		catch (ClassNotFoundException|SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
			}
		
	}
