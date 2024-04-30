<%@ page language="java" import="com.train.model.HistoryDao, java.util.List, com.train.model.BookInfo" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking Info</title>
<link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
    crossorigin="anonymous">
<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
    crossorigin="anonymous"></script>
<style>
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }
    th {
        background-color: #f2f2f2;
    }
    .back-button {
        position: absolute;
        top: 10px;
        right: 10px;
    }
</style>
</head>
<body>
    <h2 class="m-3">History</h2>
    <table class="m-auto">
        <thead>
            <tr>
                <th>User Id</th>
                <th>Train Id</th>
                <th>Train No</th>
                <th>Train Name</th>
                <th>Start</th>
                <th>Destination</th>
                <th>Start time</th>
                <th>End time</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <% 
            	String userId = request.getParameter("userId");
                HistoryDao his = new HistoryDao(); 
                List<BookInfo> hist = his.historyInfo(userId);
                for(BookInfo history : hist) {
            %>
            <tr>
                <td><%= history.getUserId() %></td>
                <td><%= history.getTid() %></td>
                <td><%= history.getTno() %></td>
                <td><%= history.getTname() %></td>
                <td><%= history.getStart() %></td>
                <td><%= history.getDestination() %></td>
                <td><%= history.getStartTime() %></td>
                <td><%= history.getEndTime() %></td>
                <td class="h4 text-center text-info"><%= history.getStatus() %></td>
            </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>
