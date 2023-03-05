package do_an2022.servlet;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import do_an2022.dao.ThongbaoDao;
import do_an2022.model.Thongbao;

import java.io.IOException;

/**
 * Servlet implementation class addthongbaoServlet
 */
public class addthongbaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	private ThongbaoDao thongbaoDao;

    public void init() {
    	thongbaoDao = new ThongbaoDao(null);
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nameTB = request.getParameter("name");
        String ndC = request.getParameter("ndc");
        String ndP = request.getParameter("ndp");
        String image = request.getParameter("imageT");
       
        Thongbao thongbao = new Thongbao();
        thongbao.setNameTB(nameTB);
        thongbao.setNdC(ndC);
        thongbao.setNdP(ndP);
        thongbao.setImage(image);
        
        try {
        	thongbaoDao.registerAddThongbao(thongbao);
            
            if(thongbao != null){
            	
            	response.sendRedirect("Addthongbao.jsp");
            	
            	
            } 
                  } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
       
    
    }

}
