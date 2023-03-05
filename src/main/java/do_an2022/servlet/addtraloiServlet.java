package do_an2022.servlet;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import do_an2022.dao.NhanxetDao;
import do_an2022.model.Nhanxet;

import java.io.IOException;

/**
 * Servlet implementation class addtraloiServlet
 */
public class addtraloiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	private NhanxetDao traloiDao;

    public void init() {
    	traloiDao = new NhanxetDao(null);
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("user");
		String nx = request.getParameter("cauhoi");
		String traloi = request.getParameter("traloi");
       
        Nhanxet tl = new Nhanxet();
        tl.setName(name);
        tl.setNx(nx);
        tl.setTraloi(traloi);
      
        
        try {
        	traloiDao.registerAddTraLoi(tl);
            
            if(tl != null){
            	
            	response.sendRedirect("Nhanxet.jsp");
            	
            	
            } 
                  } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
       
    
    }

}
