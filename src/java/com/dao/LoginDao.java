
package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {
 public static boolean validate(String name, String pass) {        
        boolean status = false;
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

//        String url = "";
//        String dbName = "crud";
//        String driver = "";
//        String userName = "sam";
//        String password = "";
        try {
            Class.forName("org.h2.Driver").newInstance();
            conn = DriverManager
                    .getConnection("jdbc:h2:tcp://localhost/~/crud","sam","");

            pst = conn
                    .prepareStatement("select * from login where username=? and password=?");
            pst.setString(1, name);
            pst.setString(2, pass);

            rs = pst.executeQuery();
            status = rs.next();

        } catch (Exception e) {
            System.out.println(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pst != null) {
                try {
                    pst.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return status;
    }   
}
