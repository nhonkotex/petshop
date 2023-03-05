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
import do_an2022.dao.productGTDao;

/**
 * Servlet implementation class deleteproductGTServlet
 */
public class deleteproductGTServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try(PrintWriter out = response.getWriter()) {
			String id = request.getParameter("id");
			
			if(id != null) {
				
				productGTDao productDao = new productGTDao(DbCon.getConnetion());
				productDao.huydon(Integer.parseInt(id));
				
			}
			response.sendRedirect("quanlyproduct.jsp");
		}
		catch (ClassNotFoundException|SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
			}
		
	}

	