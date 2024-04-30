package com.train.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TrainList {
	  public List<Train> trainList() {
	        Connection con = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;
	        List<Train> train = new ArrayList<>();
	        try {
	            String query = "jdbc:mysql://localhost:3306/servlet";
	            String user = "root";
	            String pwd = "root";
	            String sql = "select * from NewTrains";
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            con = DriverManager.getConnection(query, user, pwd);
	            pstmt = con.prepareStatement(sql);

	            rs = pstmt.executeQuery();
	            while (rs.next()) {
	                Train t = new Train();
	                t.setTid(rs.getInt(1));
	                t.setTno(rs.getString(2));
	                t.setTname(rs.getString(3));
	                t.setStart(rs.getString(4));
	                t.setDestination(rs.getString(5));
	                t.setStartTime(rs.getString(6));
	                t.setEndTime(rs.getString(7));
	                t.setAvalSeat(rs.getString(8));

	                train.add(t);
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            try {
	                if (rs != null) rs.close();
	                if (pstmt != null) pstmt.close();
	                if (con != null) con.close();
	            } catch (Exception ex) {
	                ex.printStackTrace();
	            }
	        }

	        return train;
	    }
}
