package do_an2022.dao;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import do_an2022.connection.DbCon;
import do_an2022.model.AddLich;
import do_an2022.model.Product;

public class AddLichDao {
	public int registerAddlich(AddLich addlich) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO lichkham" +
            "  (id, name, sdt, ngay, gio, ghichu ) VALUES " +
            " (?, ?, ?, ?, ?, ?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
        		.getConnection("jdbc:mysql://localhost:3306/shoppet","root","07191908");

            // Step 2:Create a statement using connection object
        	

            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setInt(1, addlich.getId() + 13  );
            preparedStatement.setString(2, addlich.getName());
            preparedStatement.setString(3, addlich.getSdt());
            preparedStatement.setString(4, addlich.getNgay() );
            preparedStatement.setString(5, addlich.getGio());
            preparedStatement.setString(6, addlich.getGhiChu());
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
    private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	public AddLichDao(Connection con) {
		this.con = con;
	}
	public List<AddLich> getAllLich() {
	    List<AddLich> lich = new ArrayList<>();
	    try {
	
	        query = "select * from lichkham";
	        pst = this.con.prepareStatement(query);
	        rs = pst.executeQuery();
	
	        while (rs.next()) {
	        	AddLich row = new AddLich();
	            row.setId(rs.getInt("id"));
	            row.setName(rs.getString("name"));
	            row.setSdt(rs.getString("sdt"));
	            row.setNgay(rs.getString("ngay"));
	            row.setGio(rs.getString("gio"));
	            row.setGhiChu(rs.getString("ghichu"));
	            lich.add(row);
	        }
	
	    } catch (SQLException e) {
	        e.printStackTrace();
	        System.out.println(e.getMessage());
	    }
	    return lich;	   
	
	}
	
	 public void Xoalich(int id) {
         //boolean result = false;
         try {
             query = "delete from lichkham where id=?";
             pst = this.con.prepareStatement(query);
             pst.setInt(1, id);
             pst.execute();
             //result = true;
         } catch (SQLException e) {
             e.printStackTrace();
             System.out.print(e.getMessage());
         }
         //return result;
     }
	 
	 private PreparedStatement stm;
	 public List<AddLich> getSuaLich (String GhiChu)throws Exception {
		 AddLich al = new AddLich();
		 
		 Connection con = null;
		
		 ResultSet rs = null;
		 try {
			 con = DbCon.getConnetion();
			 if (con != null) {
				 String sql = "select * from lichkham where ghichu=?";
				 stm = con.prepareStatement(sql);
				 stm.setString(1, GhiChu);
				 
				 rs = stm.executeQuery();
				 if (rs.next()) {
					 al.setId(rs.getInt("id"));
					 al.setName(rs.getString("name"));
					 al.setSdt(rs.getString("sdt"));
			         al.setNgay(rs.getString("ngay"));
			         al.setGio(rs.getString("gio"));
			         al.setGhiChu(rs.getString("ghichu"));
				 }
				 
				 
			 }
		 } finally {
			 
		 }
		 return null;
	 }
	
	 public boolean updateRecord(String name, String sdt, String ngay, String gio, String GhiChu)
	 throws SQLException, NamingException, Exception {
		 Connection con = null;
		 PreparedStatement stm = null;
		 try {
			 con = DbCon.getConnetion();
			 if(con != null) {
				 String sql = "Update lichkham set sdt=?,ngay=?,gio=?,ghichu=? where name=? ";
				 stm = con.prepareStatement(sql);
				 stm.setString(1, name);
				 stm.setString(2, sdt);
				 stm.setString(3, ngay);
				 stm.setString(4, gio);
				 stm.setString(5, GhiChu);
				 
				 int row = stm.executeUpdate();
				 if (row > 0) {
					 return true;
				 }
						 
			 }
		 }finally {
			 
		 } return false;
	 }
}
	
