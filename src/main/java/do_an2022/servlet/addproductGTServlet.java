package do_an2022.servlet;

import jakarta.servlet.ServletException;


import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import do_an2022.dao.addproductGTDao;
import do_an2022.model.productGT;

import java.io.IOException;

/**
 * Servlet implementation class addproductGTServlet
 */
public class addproductGTServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private addproductGTDao addhangDao;
    public void init() {
 	   addhangDao = new addproductGTDao();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("nameGT");
		String gia = request.getParameter("giaGT");
		String giachinh = request.getParameter("giachinhGT");
		String image = request.getParameter("imageGT");
		String chitiet = request.getParameter("chitiet");
		
		productGT addsp = new productGT();
		addsp.setName(name);
		addsp.setGia(giachinh);
		addsp.setGiachinh(giachinh);
		addsp.setImage(image);
		addsp.setChitiet(chitiet);
		
		 try {
			 addhangDao.registerAddproductGT(addsp);
	            
	            if(addsp != null){
	            	
	            	response.sendRedirect("quanlyproduct.jsp");
	            	
	            	
	            } 
	                  } catch (Exception e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
		
	}

}

