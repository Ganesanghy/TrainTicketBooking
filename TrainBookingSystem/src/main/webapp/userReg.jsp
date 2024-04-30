<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration</title>
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
					<div class="card-header"><h2 class="text-center">NEW REGISTRATION</h2></div>
					<div class="card-body text-center">
						<form action="RegistrationServlet" method="post">
							<div class="d-flex flex-row d-flex justify-content-around form-group">
									<label class="mr-auto p-2 h5">Candidate Name</label>
									<input type="text" class="form-control col-8 ms-auto ps-2" name="cname" id="cname" placeholder="Full Name">
							</div>
							<div class="d-flex flex-row d-flex justify-content-around form-group">
									<label class="mr-auto p-2 h5">Age</label>
									<input type="text" class="form-control col-8 ms-auto ps-2" name="age" id="age" placeholder="Age">
							</div>
							<div class="d-flex flex-row d-flex justify-content-around form-group">
								<label class="mr-auto p-2 h5">Gender</label>
									<div class="form-group form-check form-check-inline ml-2 mr-auto p-2 h5">
	  									<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="male">
	  									<label class="form-check-label" for="inlineRadio1">Male</label>
									</div>
									<div class="form-group form-check form-check-inline ml-2 mr-auto p-2 h5">
	  									<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="female">
	  									<label class="form-check-label" for="inlineRadio2">Female</label>
									</div>
							</div>
							
							<div class="d-flex flex-row d-flex justify-content-around form-group">
									<label class="mr-auto p-2 h5">Email Id</label>
									<input type="email" class="form-control col-8 ms-auto ps-2" name="email" id="email" placeholder="Email ID">
							</div>
							<div class="d-flex flex-row d-flex justify-content-around form-group">
									<label class="mr-auto p-2 h5">Phone No</label>
									<input type="text" class="form-control col-8 ms-auto ps-2" name="phone" id="phone" placeholder="Phone Number">
							</div>
							<div class="d-flex flex-row d-flex justify-content-around form-group">
									<label class="mr-auto p-2 h5">Password</label>
									<input type="text" class="form-control col-8 ms-auto ps-2" name="pwd" id="pwd" placeholder="Password">
							</div>
							<div class="d-flex flex-row d-flex justify-content-around form-group">
									<label class="mr-auto p-2 h5">State</label>
									<input type="text" class="form-control col-8 ms-auto ps-2" name="state" id="state" placeholder="State">
							</div>
							<div class="d-flex flex-row d-flex justify-content-around form-group">
									<label class="mr-auto p-2 h5">Roll</label>
									<input type="text" class="form-control col-8 ms-auto ps-2" name="roll" id="roll" placeholder="Roll">
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