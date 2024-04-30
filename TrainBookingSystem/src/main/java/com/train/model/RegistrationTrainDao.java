package com.train.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class RegistrationTrainDao {
public boolean newRegistration(String name, String age, String gender, String email, String phone, String password, String state,String roll, String datetime) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		int i = 0;
		
		try {
			String query = "jdbc:mysql://localhost:3306/servlet";
	        String user = "root";
	        String pwd = "root";
	        String sql = "insert into TrainUserRegistration(UNAME,AGE,GENDER,EMAIL,PHONE,PASSWORD,STATE,ROLL,TIMESLOT) values(?,?,?,?,?,?,?,?,?)";
	        Class.forName("com.mysql.cj.jdbc.Driver"); 
	        con = DriverManager.getConnection(query, user, pwd);
	        pstmt = con.prepareStatement(sql);
	        pstmt.setString(1, name);
	        pstmt.setString(2, age);
	        pstmt.setString(3, gender);
	        pstmt.setString(4, email);
	        pstmt.setString(5, phone);
	        pstmt.setString(6, password);
	        pstmt.setString(7, state);
	        pstmt.setString(8, roll);
	        pstmt.setString(9, datetime);
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
