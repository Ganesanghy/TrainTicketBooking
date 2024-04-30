<%@ page language="java" import="com.train.model.Record" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
    crossorigin="anonymous">
<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
    crossorigin="anonymous"></script>
</head>
<body>
    <div class="container mt-3">
        <div class="row justify-content-center m-5">
            <div class="col">
                <h2 class="">
                    Welcome,
                    <%= request.getAttribute("uname") %></h2>
                </div>
                <div>
                    <a class="btn btn-outline-secondary px-2 mt-2" href="trainList.jsp?userId=<%= request.getAttribute("userId") %>" role="button">Train's list</a>
                    <a class="btn btn-outline-secondary px-2 mt-2" href="historyInfo.jsp?userId=<%= request.getAttribute("userId") %>" role="button">Status</a>
                    
                </div>
            </div>
        </div>
    </div>
</body>
</html>
