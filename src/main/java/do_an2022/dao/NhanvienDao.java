package do_an2022.dao;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import do_an2022.model.Nhanvien;

public class NhanvienDao {
	  private Connection con;
		private String query;
		private PreparedStatement pst;
		private ResultSet rs;
		public NhanvienDao(Connection con) {
			this.con = con;
		}
		public List<Nhanvien> getAllNhanvien() {
		    List<Nhanvien> nhanvien = new ArrayList<>();
		    try {
		
		        query = "select * from Nhanvien";
		        pst = this.con.prepareStatement(query);
		        rs = pst.executeQuery();
		
		        while (rs.next()) {
		        	Nhanvien row = new Nhanvien();
		            row.setId(rs.getInt("id"));
		            row.setNameNV(rs.getString("nameVN"));
		            row.setChucvu(rs.getString("chucvu"));
		            row.setSdt(rs.getString("sdt"));
		            row.setSoCMND(rs.getString("soCMDN"));
		            row.setDiachi(rs.getString("diachi"));
		            row.setLuong(rs.getString("luong"));
		            row.setNote(rs.getString("note"));
		            row.setSotruong(rs.getString("sotruong"));
		            row.setImage(rs.getString("image"));
		           
		            nhanvien.add(row);
		        }
		
		    } catch (SQLException e) {
		        e.printStackTrace();
		        System.out.println(e.getMessage());
		    }
		    return nhanvien;	   
		
		}
		
		 public int registerAddNhanvien(Nhanvien nhanvien) throws ClassNotFoundException {
		        String INSERT_USERS_SQL = "INSERT INTO Nhanvien" +
		            "  (id, nameVN, chucvu, sdt, soCMDN, diachi, luong, note, sotruong, image) VALUES " +
		            " (?, ?, ?, ?, ?, ?, ?, ?, ? ,?);";

		        int result = 0;

		        Class.forName("com.mysql.jdbc.Driver");

		        try (Connection connection = DriverManager
		        		.getConnection("jdbc:mysql://localhost:3306/shoppet","root","07191908");

		            // Step 2:Create a statement using connection object
		            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
		            preparedStatement.setInt(1, nhanvien.getId() + 9  );
		            preparedStatement.setString(2, nhanvien.getNameNV());
		            preparedStatement.setString(3, nhanvien.getChucvu());
		            preparedStatement.setString(4, nhanvien.getSdt());
		            preparedStatement.setString(5, nhanvien.getSoCMND());
		            preparedStatement.setString(6, nhanvien.getDiachi());
		            preparedStatement.setString(7, nhanvien.getLuong());
		            preparedStatement.setString(8, nhanvien.getNote());
		            preparedStatement.setString(9, nhanvien.getSotruong());
		            preparedStatement.setString(10, nhanvien.getImage());
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
		 
		 public void xoanhanvien(int id) {
		        //boolean result = false;
		        try {
		            query = "delete from Nhanvien where id=?";
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
		    
}
