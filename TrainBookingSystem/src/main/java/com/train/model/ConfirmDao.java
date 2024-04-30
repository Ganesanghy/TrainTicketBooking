package com.train.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class ConfirmDao {
	public boolean confirm(String userId, String tid) {
        Connection con = null;
        PreparedStatement pstmt = null;
        
        try {
            String query = "jdbc:mysql://localhost:3306/servlet";
            String user = "root";
            String pwd = "root";
            String sql = "update BookingTrain set STATUS=? where UID=? AND TRAIN_ID =?";
            
            Class.forName("com.mysql.cj.jdbc.Driver"); 
            con = DriverManager.getConnection(query, user, pwd);
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, "confirm");
            pstmt.setString(2, userId); 
            pstmt.setString(3, tid);
            
            int i = pstmt.executeUpdate();
            
            if (i > 0) {
                return true; 
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (con != null) con.close();
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
        return false; 
    }
}
