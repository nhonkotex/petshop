package do_an2022.servlet;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import do_an2022.dao.AdduserDao;
import do_an2022.model.Adduser;

import java.io.IOException;

/**
 * Servlet implementation class AdduserServlet
 */
public class AdduserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    
	
	private AdduserDao adduserDao;

    public void init() {
    	adduserDao = new AdduserDao(null);
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String sodienthoai = request.getParameter("sodienthoai");
        String diachi = request.getParameter("diachi");
        
        Adduser adduser = new Adduser();
        adduser.setName(name);
        adduser.setEmail(email);
        adduser.setPassword(password);
        adduser.setSodienthoai(sodienthoai);
        adduser.setDiachi(diachi);
        try {
        	adduserDao.registerAdduser(adduser);
            
            
                  } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("ThemUserTC.jsp");
    }
}