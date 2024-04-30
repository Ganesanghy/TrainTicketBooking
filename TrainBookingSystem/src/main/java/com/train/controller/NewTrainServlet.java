package com.train.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.train.model.NewTrainDao;


public class NewTrainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		NewTrainDao newTrain = new NewTrainDao();
		String trainNo = request.getParameter("tno");
		String trainName = request.getParameter("tname");
		String start = request.getParameter("start");
		String destination = request.getParameter("destination");
		String startTime = request.getParameter("starttime");
		String endTime = request.getParameter("endtime");
		String avalSeat = request.getParameter("avalseat");
		boolean result = newTrain.newTrain(trainNo, trainName, start, destination, startTime, endTime, avalSeat);
		if(result) {
			request.setAttribute("result", true);
			RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
			rd.forward(request, response);
		}else {
			System.out.println("fail");
		}
		
	}

}
