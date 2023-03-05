package do_an2022.dao;

import java.sql.Connection;


import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import do_an2022.model.Thongbao;

public class ThongbaoDao {
	public int registerAddThongbao(Thongbao thongbao) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO tb" +
            "  (id, nameTB, ndc, ncp, image) VALUES " +
            " (?, ?, ?, ?, ? );";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
        		.getConnection("jdbc:mysql://localhost:3306/shoppet","root","07191908");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setInt(1, thongbao.getId() + 3 );
            preparedStatement.setString(2, thongbao.getNameTB());
            preparedStatement.setString(3, thongbao.getNdC());
            preparedStatement.setString(4, thongbao.getNdP());
            preparedStatement.setString(5, thongbao.getImage());
           
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
   	public ThongbaoDao(Connection con) {
   		this.con = con;
   	}
   	public List<Thongbao> getAllThongbao() {
        List<Thongbao> thongbao= new ArrayList<>();
        try {

            query = "select * from tb";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();

            while (rs.next()) {
            	Thongbao row = new Thongbao();
                row.setId(rs.getInt("id"));
                row.setNameTB(rs.getString("nameTB"));
                row.setNdC(rs.getString("ndc"));
               row.setNdP(rs.getString("ncp"));
               row.setImage(rs.getString("image"));
               thongbao.add(row);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return thongbao;
	
}
    public void XoaTB(int id) {
        //boolean result = false;
        try {
            query = "delete from tb where id=?";
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
