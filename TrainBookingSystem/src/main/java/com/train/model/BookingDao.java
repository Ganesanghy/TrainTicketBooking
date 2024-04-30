package com.train.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class BookingDao {
public boolean booking(String userId, String tid, String trainNo, String trainName, String start, String destination, String startTime, String endTime,String status) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		int i = 0;
		
		try {
			String query = "jdbc:mysql://localhost:3306/servlet";
	        String user = "root";
	        String pwd = "root";
	        String sql = "insert into BookingTrain(UID, TRAIN_ID, TRAIN_NO, TRAIN_NAME, START, DESTINATION, START_TIME, END_TIME, STATUS) VALUES(?,?,?,?,?,?,?,?,?)";
	        Class.forName("com.mysql.cj.jdbc.Driver"); 
	        con = DriverManager.getConnection(query, user, pwd);
	        pstmt = con.prepareStatement(sql);
	        pstmt.setString(1, userId);
	        pstmt.setString(2, tid);
	        pstmt.setString(3, trainNo);
	        pstmt.setString(4, trainName);
	        pstmt.setString(5, start);
	        pstmt.setString(6, destination);
	        pstmt.setString(7, startTime);
	        pstmt.setString(8, endTime);
	        pstmt.setString(9, status);
	        i = pstmt.executeUpdate();
	        if(i > 0) {
	        	return true;
	        }
	        
		}catch(Exception e) {
			e.printStackTrace();
		}
		finally {
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
