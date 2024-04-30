package com.train.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.train.model.BookingDao;

public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BookingDao booking = new BookingDao();
		String userId = request.getParameter("userId");
		String tid = request.getParameter("tid");
		String tno = request.getParameter("tno");
		String tname = request.getParameter("tname");
		String start = request.getParameter("start");
		String destination = request.getParameter("des");
		String starttime = request.getParameter("starttime");
		String endtime = request.getParameter("endtime");
		String status = "pending";
		boolean res = booking.booking(userId, tid, tno, tname, start, destination, starttime, endtime,status);
		if(res) {
			request.setAttribute("result", true);
			RequestDispatcher rd = request.getRequestDispatcher("trainList.jsp");
            rd.forward(request, response);
		}
		else {
			System.out.println("booking fail");
		}
	}

}