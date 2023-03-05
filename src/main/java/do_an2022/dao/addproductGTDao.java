package do_an2022.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import do_an2022.model.productGT;

public class addproductGTDao {
	public int registerAddproductGT(productGT productgt) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO productQC" +
            "  (id, name, gia, giachinh, image, chitiet) VALUES " +
            " (?, ?, ?, ?, ?, ?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
        		.getConnection("jdbc:mysql://localhost:3306/shoppet","root","07191908");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setInt(1, productgt.getId() + 3 );
            preparedStatement.setString(2, productgt.getName());
            preparedStatement.setString(3, productgt.getGia());
            preparedStatement.setString(4, productgt.getGiachinh());
            preparedStatement.setString(5, productgt.getImage());        
            preparedStatement.setString(6, productgt.getChitiet());
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

}
