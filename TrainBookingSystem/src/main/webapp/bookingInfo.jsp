<%@ page language="java" import="com.train.model.BookingInfo, java.util.List, com.train.model.BookInfo" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        $(".confirmButton, .cancelButton").click(function() {
            var cofmid = $(this).data("cofmid");
            var clickedButton = $(this);
            var otherButton = clickedButton.siblings(".confirmButton, .cancelButton");
        
            var formdata = {
                cofmid: cofmid
            };
            
            $.ajax({
                type: 'POST',
                url: (clickedButton.hasClass("confirmButton")) ? 'ConfirmServlet' : 'CancelServlet',
                data: formdata,
                success: function(data) {
                    clickedButton.prop("disabled", true);
                    otherButton.prop("disabled", true);
                    var statusId = "demo_" + data.userId + "_" + data.tid;
                    document.getElementById(statusId).innerHTML = data.message;
                },
                error: function(xhr, status, error) {
                    alert("Error occurred");
                }
            });
        });
    });
</script>

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
    <h2 class="m-3">Booking Info</h2>
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
                <th>Action</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <% 
                BookingInfo info = new BookingInfo(); 
                List<BookInfo> books = info.allBookInfo();
                for(BookInfo book : books) {
            %>
            <tr>
                <td><%= book.getUserId() %></td>
                <td><%= book.getTid() %></td>
                <td><%= book.getTno() %></td>
                <td><%= book.getTname() %></td>
                <td><%= book.getStart() %></td>
                <td><%= book.getDestination() %></td>
                <td><%= book.getStartTime() %></td>
                <td><%= book.getEndTime() %></td>
                <td class="text-center">
                    <button class="confirmButton btn btn-outline-success px-2 mt-2"  data-cofmid="<%= book.getUserId()+"@"+ book.getTid() %>">Confirm</button>
                    <button class="cancelButton btn btn-outline-danger px-2 mt-2" data-cofmid="<%= book.getUserId()+"@"+ book.getTid() %>">Cancel</button> 
                </td>
                <td><h4 id="demo_<%= book.getUserId() %>_<%= book.getTid() %>"></h4></td>
            </tr>
            <% } %>
        </tbody>
    </table>
    <a class="btn btn-outline-secondary px-2 m-3 back-button" href="admin.jsp" role="button">Back</a>
</body>
</html>
