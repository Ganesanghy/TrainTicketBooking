package com.train.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.train.model.LoginTrainDao;
import com.train.model.Record;


public class LoginTrainServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
   
  
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        LoginTrainDao loginTrainDao  = new LoginTrainDao();
        String uname = request.getParameter("uname");
        String pwd = request.getParameter("pwd");
        
        Record result = loginTrainDao.login(uname, pwd);
        if(result != null) {
            String roll = result.getRoll();
            int userId = result.getuId();
            if(roll.equals("admin")) {
                RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
                rd.forward(request, response);
            } else {
                request.setAttribute("uname", uname);
                request.setAttribute("userId", userId); 
                RequestDispatcher rd = request.getRequestDispatcher("userDashBoard.jsp");
                rd.forward(request, response);
            }
            
        } else {
        	
            PrintWriter out = response.getWriter();
            out.println("<script>alert('Invalid username and password')</script>");
            
        }
    }
}
