package do_an2022.servlet;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import do_an2022.dao.NhanvienDao;
import do_an2022.model.Nhanvien;

import java.io.IOException;

/**
 * Servlet implementation class addnhanvienServlet
 */
public class addnhanvienServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private NhanvienDao addnhanvien;
    public void init() {
 	   addnhanvien = new NhanvienDao(null);
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nameVN = request.getParameter("nameNV");
		String chucvu = request.getParameter("chucvu");
		String sdt = request.getParameter("sdt");
		String soCMND = request.getParameter("soCMND");
		String diachi = request.getParameter("diachi");
		String luong = request.getParameter("luong");
		String note = request.getParameter("note");
		String sotruong = request.getParameter("sotruong");
		String image = request.getParameter("image");
		
		Nhanvien nhanvien = new Nhanvien();
		nhanvien.setNameNV(nameVN);
		nhanvien.setChucvu(chucvu);
		nhanvien.setSdt(sdt);
		nhanvien.setSoCMND(soCMND);
		nhanvien.setDiachi(diachi);
		nhanvien.setLuong(luong);
		nhanvien.setNote(note);
		nhanvien.setSotruong(sotruong);
		nhanvien.setImage(image);
		
		
		try {
			addnhanvien.registerAddNhanvien(nhanvien);
		}catch (Exception e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
	}
		response.sendRedirect("Nhanvien.jsp");
	}

}

