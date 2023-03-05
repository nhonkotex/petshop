package do_an2022.servlet;

import java.io.IOException;

import do_an2022.dao.addProductDao;
import do_an2022.model.addProduct;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddproductServlet
 */
public class AddproductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private addProductDao addhangDao;
    public void init() {
 	   addhangDao = new addProductDao();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String category = request.getParameter("category");
		String price = request.getParameter("price");
		String image = request.getParameter("image");
		
		addProduct addsp = new addProduct();
		addsp.setName(name);
		addsp.setCategory(category);
		addsp.setPrice(price);
		addsp.setImage(image);
		try {
		addhangDao.registerAddProduct(addsp);
		}catch (Exception e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
	}
		response.sendRedirect("quanlyproduct.jsp");
	}

}

