package com.servlets.db;
import java.sql.*;
public class mySqlCon{

    public static Connection connect() {
        Connection con=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
             con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/airline_system", "root", "");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
}
