package do_an2022.dao;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import do_an2022.model.Nhanxet;

public class NhanxetDao {
	public int registerAddNhanxet(Nhanxet nhanxet) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO nhanxet" +
            "  (id, name, dv, sp, nv, choi, traloi) VALUES " +
            " (?, ?, ?, ?, ?, ?, ? );";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
        		.getConnection("jdbc:mysql://localhost:3306/shoppet","root","07191908");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setInt(1, nhanxet.getId() + 5 );
            preparedStatement.setString(2, nhanxet.getName());
            preparedStatement.setString(3, nhanxet.getDv());
            preparedStatement.setString(4, nhanxet.getSp());
            preparedStatement.setString(5, nhanxet.getNv());
            preparedStatement.setString(6, nhanxet.getNx());
            preparedStatement.setString(7,nhanxet.getTraloi());
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
    }
	// trả lời
	public int registerAddTraLoi(Nhanxet traloi) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO traloi" +
            "  (id, user, cauhoi, traloi) VALUES " +
            " (?, ?, ?, ? );";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
        		.getConnection("jdbc:mysql://localhost:3306/shoppet","root","07191908");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setInt(1, traloi.getId() + 2 );
            preparedStatement.setString(2, traloi.getName());
            preparedStatement.setString(3, traloi.getNx());
            preparedStatement.setString(4, traloi.getTraloi());
            
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
   	public NhanxetDao(Connection con) {
   		this.con = con;
   	}
   	public List<Nhanxet> getAllNhanxet() {
        List<Nhanxet> nhanxet= new ArrayList<>();
        try {

            query = "select * from nhanxet";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();

            while (rs.next()) {
            	Nhanxet row = new Nhanxet();
                row.setId(rs.getInt("id"));
                row.setName(rs.getString("name"));
                row.setDv(rs.getString("dv"));
               row.setSp(rs.getString("sp"));
               row.setNv(rs.getString("nv"));
               row.setNx(rs.getString("choi"));
               nhanxet.add(row);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return nhanxet;
	
}
   	
   	public List<Nhanxet> getAllTraloi() {
        List<Nhanxet> traloi= new ArrayList<>();
        try {

            query = "select * from traloi";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();

            while (rs.next()) {
            	Nhanxet row = new Nhanxet();
                row.setId(rs.getInt("id"));
                row.setName(rs.getString("user"));
               row.setNx(rs.getString("cauhoi"));
               row.setTraloi(rs.getString("traloi"));
               traloi.add(row);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return traloi;
	
}
   	
    public void xoaNX(int id) {
        //boolean result = false;
        try {
            query = "delete from nhanxet where id=?";
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
    public void xoaTL(int id) {
        //boolean result = false;
        try {
            query = "delete from traloi where id=?";
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
