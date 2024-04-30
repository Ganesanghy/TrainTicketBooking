package com.train.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class NewTrainDao {
public boolean newTrain(String trainNo, String trainName, String start, String destination, String startTime, String endTime, String aval) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		int i = 0;
		
		try {
			String query = "jdbc:mysql://localhost:3306/servlet";
	        String user = "root";
	        String pwd = "root";
	        String sql = "insert into NewTrains(TRAIN_NO, TRAIN_NAME, START, DESTINATION, START_TIME, END_TIME, AVAL_SEAT) VALUES(?,?,?,?,?,?,?)";
	        Class.forName("com.mysql.cj.jdbc.Driver"); 
	        con = DriverManager.getConnection(query, user, pwd);
	        pstmt = con.prepareStatement(sql);
	        pstmt.setString(1, trainNo);
	        pstmt.setString(2, trainName);
	        pstmt.setString(3, start);
	        pstmt.setString(4, destination);
	        pstmt.setString(5, startTime);
	        pstmt.setString(6, endTime);
	        pstmt.setString(7, aval);
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
