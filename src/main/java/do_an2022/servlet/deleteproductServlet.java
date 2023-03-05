package do_an2022.servlet;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import do_an2022.connection.DbCon;
import do_an2022.dao.ProductDao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

/**
 * Servlet implementation class deleteproductServlet
 */
public class deleteproductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try(PrintWriter out = response.getWriter()) {
			String id = request.getParameter("id");
			
			if(id != null) {
				
				ProductDao productDao = new ProductDao(DbCon.getConnetion());
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

	