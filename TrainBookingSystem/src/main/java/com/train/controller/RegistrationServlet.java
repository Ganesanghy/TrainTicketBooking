package com.train.controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.train.model.RegistrationTrainDao;

public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RegistrationTrainDao reg = new RegistrationTrainDao();
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");  
		LocalDateTime now = LocalDateTime.now();  
		String name = request.getParameter("cname");
		String age = request.getParameter("age");
		String gender = request.getParameter("inlineRadioOptions");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String pwd = request.getParameter("pwd");
		String state = request.getParameter("state");
		String roll = request.getParameter("roll");
		String datetime = dtf.format(now);
		
		boolean result = reg.newRegistration(name, age, gender,email,phone,pwd,state,roll,datetime);
		if(result) {
			request.setAttribute("result", true);
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
		else {
			System.out.println("registration page error");
		}
		
		
	}

}
