package do_an2022.servlet;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import do_an2022.dao.AddlichGTDao;
import do_an2022.model.AddLich;

import java.io.IOException;

/**
 * Servlet implementation class AddlichGtServlet
 */
public class AddlichGtServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private AddlichGTDao addlichGTDao;

    public void init() {
    	addlichGTDao = new AddlichGTDao(null);
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("nameGT");
        String sdt = request.getParameter("phoneGT");
        String ngay = request.getParameter("dateGT");
        String gio = request.getParameter("timeGT");
        String GhiChu = request.getParameter("ghichuGT");
        AddLich addlich = new AddLich();
        addlich.setName(name);
        addlich.setSdt(sdt);
        addlich.setNgay(ngay);
        addlich.setGio(gio);
        addlich.setGhiChu(GhiChu);
        try {
        	addlichGTDao.registerAddlichGT(addlich);
            
            
                  } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("ThemLichTC.jsp");
    }

}
