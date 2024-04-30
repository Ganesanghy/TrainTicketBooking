package com.train.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class HistoryDao {
	public List<BookInfo> historyInfo(String userId) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<BookInfo> info = new ArrayList<>();
        try {
            String query = "jdbc:mysql://localhost:3306/servlet?useSSL=false"; 
            String user = "root";
            String pwd = "root";
            String sql = "select * from BookingTrain where UID=?";
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(query, user, pwd);
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, userId);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                BookInfo i = new BookInfo();
                i.setUserId(rs.getString(1));
                i.setTid(rs.getString(2));
                i.setTno(rs.getString(3));
                i.setTname(rs.getString(4));
                i.setStart(rs.getString(5));
                i.setDestination(rs.getString(6));
                i.setStartTime(rs.getString(7));
                i.setEndTime(rs.getString(8));
                i.setStatus(rs.getString(9));
                info.add(i);
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
        return info;
    }
}
