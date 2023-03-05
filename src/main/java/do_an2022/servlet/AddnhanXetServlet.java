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
 * Servlet implementation class AddnhanXetServlet
 */
public class AddnhanXetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	private NhanxetDao nhanxetDao;

    public void init() {
    	nhanxetDao = new NhanxetDao(null);
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
        String dv = request.getParameter("dv");
        String sp = request.getParameter("sp");
        String nv = request.getParameter("nv");
        String nx = request.getParameter("nx");
        String traloi = request.getParameter("traloi");
        Nhanxet nhanxet = new Nhanxet();
        nhanxet.setName(name);
        nhanxet.setDv(dv);
        nhanxet.setSp(sp);
        nhanxet.setNv(nv);
        nhanxet.setNx(nx);
        nhanxet.setTraloi(traloi);
        
        try {
        	nhanxetDao.registerAddNhanxet(nhanxet);
            
            if(nhanxet != null){
            	
            	response.sendRedirect("hoiTC.jsp");
            	
            	
            } 
                  } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
       
    
    }

}
