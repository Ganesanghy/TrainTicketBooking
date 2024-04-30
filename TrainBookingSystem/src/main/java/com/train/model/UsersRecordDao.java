package com.train.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UsersRecordDao {
    public List<Record> allUserRecord() {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<Record> record = new ArrayList<>();
        try {
            String query = "jdbc:mysql://localhost:3306/servlet";
            String user = "root";
            String pwd = "root";
            String sql = "SELECT * FROM TrainUserRegistration WHERE Uname <> ?";
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(query, user, pwd);
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, "admin");
            rs = pstmt.executeQuery();
            while (rs.next()) {
                Record r = new Record();
                r.setUname(rs.getString(2));
                r.setAge(rs.getString(3));
                r.setGender(rs.getString(4));
                r.setEmail(rs.getString(5));
                r.setPhone(rs.getString(6));
                r.setPassword(rs.getString(7));
                r.setState(rs.getString(8));

                record.add(r);
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

        return record;
    }
}
