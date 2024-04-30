<%@ page language="java" import="com.train.model.Record, com.train.model.TrainList, com.train.model.Train, java.util.List" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Train's List</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
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
	<div class="d-flex justify-content-around">
		<h2 class="m-3">TRAIN LIST</h2>
	</div>
        <table class="m-auto">
        <thead>
            <tr>
            	<th>Train Id</th>
                <th>Train No</th>
                <th>Train Name</th>
                <th>Start</th>
                <th>Destination</th>
                <th>Start Time</th>
                <th>End Time</th>
                <th>Available Seat</th>
                <th>Book</th>
            </tr>
        </thead>
        <tbody>
            <%
            TrainList fetcher = new TrainList();
            List<Train> trains = fetcher.trainList();
            String userId = request.getParameter("userId");
            if (trains != null) {
                for (Train train : trains) {
            %>
            <tr>
            	<td><%=train.getTid() %></td>
                <td><%=train.getTno()%></td>
                <td><%=train.getTname()%></td>
                <td><%=train.getStart()%></td>
                <td><%=train.getDestination()%></td>
                <td><%=train.getStartTime()%></td>
                <td><%=train.getEndTime()%></td>
                <td><%=train.getAvalSeat()%></td>
                
                <td class="text-center"><a class="btn btn btn-outline-info px-2 mt-2" id="book"
                    href="BookingServlet?userId=<%=userId%>&tid=<%=train.getTid() %>&tno=<%=train.getTno()%>&tname=<%=train.getTname()%>&start=<%=train.getStart()%>&des=<%=train.getDestination()%>&starttime=<%=train.getStartTime()%>&endtime=<%=train.getEndTime()%>"
                    role="button">Booking</a></td>
            </tr>
            <% 
                }
            } else {
            %>
            <tr>
                <td colspan="8">No trains available</td>
            </tr>
            <% } %> 
        </tbody>
    </table>
	<% if (request.getAttribute("result") != null && (boolean)request.getAttribute("result")) { %>
	    <script>
	        alert("The ticket has been successfully booked! and is currently awaiting confirmation. Utilize the 'Track Status' section to monitor its progress");
	    </script>
	<% } %>

</body>
</html>
