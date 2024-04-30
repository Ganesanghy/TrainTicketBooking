<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New train</title>
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
	<div class="container mt-4">
		<div class="row justify-content-center">
			<div class="col-6">
				<div class="card">
					<div class="card-header"><h2 class="text-center">NEW TRAIN</h2></div>
					<div class="card-body text-center">
						<form action="NewTrainServlet" method="post">
							<div class="d-flex flex-row d-flex justify-content-around form-group">
									<label class="mr-auto p-2 h5">Train Number</label>
									<input type="text" class="form-control col-8 ms-auto ps-2" name="tno" id="tno" placeholder="Train No">
							</div>
							<div class="d-flex flex-row d-flex justify-content-around form-group">
									<label class="mr-auto p-2 h5">Train Name</label>
									<input type="text" class="form-control col-8 ms-auto ps-2" name="tname" id="tname" placeholder="Train Name">
							</div>
							<div class="d-flex flex-row d-flex justify-content-around form-group">
									<label class="mr-auto p-2 h5">Start</label>
									<input type="text" class="form-control col-8 ms-auto ps-2" name="start" id="start" placeholder="Start">
							</div>
							<div class="d-flex flex-row d-flex justify-content-around form-group">
									<label class="mr-auto p-2 h5">Destination</label>
									<input type="text" class="form-control col-8 ms-auto ps-2" name="destination" id="destination" placeholder="Destination">
							</div>
							<div class="d-flex flex-row d-flex justify-content-around form-group">
									<label class="mr-auto p-2 h5">Starting time</label>
									<select name="starttime" class="form-control col-8 ms-auto ps-2">
								        <% 
								        for (int hour = 0; hour < 24; hour++) {
								            String start = String.format("%02d:00", hour);
								        %>
								            <option value="<%= start %>"><%= start %></option>
								        <% } %>
								    </select>
							</div>
							<div class="d-flex flex-row d-flex justify-content-around form-group">
									<label class="mr-auto p-2 h5">Ending time</label>
									<select name="endtime" class="form-control col-8 ms-auto ps-2">
								        <% 
								        for (int hour = 0; hour < 24; hour++) {
								            String end = String.format("%02d:00", hour);
								        %>
								            <option value="<%= end %>"><%= end %></option>
								        <% } %>
								    </select>
							</div>
							<div class="d-flex flex-row d-flex justify-content-around form-group">
									<label class="mr-auto p-2 h5">Available Seat</label>
									<input type="text" class="form-control col-8 ms-auto ps-2" name="avalseat" id="avalseat" placeholder="Seats">
							</div>
							<div class="text-center">
									<button type="submit" class="btn text-white bg-primary">Submit</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>