package do_an2022.servlet;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import do_an2022.dao.AddLichDao;
import do_an2022.model.AddLich;

import java.io.IOException;

/**
 * Servlet implementation class AddlichServlet
 */
public class AddlichServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	private AddLichDao addlichDao;

    public void init() {
    	addlichDao = new AddLichDao(null);
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
        String sdt = request.getParameter("phone");
        String ngay = request.getParameter("date");
        String gio = request.getParameter("time");
        String GhiChu = request.getParameter("ghichu");
        AddLich addlich = new AddLich();
        addlich.setName(name);
        addlich.setSdt(sdt);
        addlich.setNgay(ngay);
        addlich.setGio(gio);
        addlich.setGhiChu(GhiChu);
        try {
        	addlichDao.registerAddlich(addlich);
            
            if(addlich != null){
            	
            	response.sendRedirect("ThemLichUser.jsp");
            	
            	
            } 
                  } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
       
    
    }

}
