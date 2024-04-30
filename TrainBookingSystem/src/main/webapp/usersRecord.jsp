<%@ page language="java" import="com.train.model.UsersRecordDao" import="com.train.model.Record" import="java.util.List" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Records</title>
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
    </style>
</head>
<body>

<h2>User Records</h2>

<table>
    <thead>
        <tr>
            <th>UserName</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Email</th>
            <th>PhoneNo</th>
            <th>Password</th>
            <th>State</th>
        </tr>
    </thead>
    <tbody>
        <% 
            UsersRecordDao fetcher = new UsersRecordDao();
            List<Record> records = fetcher.allUserRecord();
            for (Record record : records) {
        %>
            <tr>
                <td><%= record.getUname() %></td>
                <td><%= record.getAge() %></td>
                <td><%= record.getGender() %></td>
                <td><%= record.getEmail() %></td>
                <td><%= record.getPhone() %></td>
                <td><%= record.getPassword() %></td>
                <td><%= record.getState() %></td>
            </tr>
        <% } %>
    </tbody>
</table>

</body>
</html>
