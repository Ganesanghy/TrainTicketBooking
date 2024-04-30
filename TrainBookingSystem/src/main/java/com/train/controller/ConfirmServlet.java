package com.train.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.train.model.ConfirmDao;

public class ConfirmServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ConfirmDao confirm = new ConfirmDao();
        String confirmId = request.getParameter("cofmid");
        String[] val = confirmId.split("@");
        String userId = val[0];
        String tid = val[1];
        boolean result = confirm.confirm(userId, tid);
        if (result) {
            Map<String, String> map = new HashMap<>();
            map.put("userId", userId);
            map.put("tid", tid);
            map.put("message", "Confirmed");
            Gson gson = new Gson();
            String json = gson.toJson(map);
           // System.out.println(json); 
            response.setContentType("application/json");
            PrintWriter out = response.getWriter();
            out.print(json);
            out.flush();
        } else {
            System.out.println("confirm fail");
        }

    }
}
