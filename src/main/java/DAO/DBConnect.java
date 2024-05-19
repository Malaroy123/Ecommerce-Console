package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
    public static Connection connectDB() throws SQLException {

        Connection con = DriverManager.getConnection("jdbc:mysql://copy-paste-your-aws-rds-endpoint-here/your-database-name", "username", "password");
        System.out.println("Connection successful");
        return con;

//          Use this for a local MySQL database
//        Connection con = DriverManager.getConnection("your-mysql-url-here", "username", "password");
//        System.out.println("Connection successful");
//        return con;
    }

}
