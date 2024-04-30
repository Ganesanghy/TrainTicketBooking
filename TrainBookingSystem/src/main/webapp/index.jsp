<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Train Ticket Booking</title><link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>

</head>
<body>
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-12 text-center mb-3"><h1>INDIAN RAILWAY TICKET BOOKING</h1></div>
			<div class="col-5">
				<div class="card">
					<div class="card-header text-center"><h2>Login</h2></div>
					<div class="card-body">
						<form id="loginForm" action="LoginTrainServlet" method="post" autocomplete="on">
							<div class="form-group">
								<p class="text-danger" id="message"></p>
								<label for="uname" class="h4">UserName</label>
								<input type="text" id="uname" class="form-control" placeholder="UserName" name="uname" required>
							</div>
							<div class="form-group">
								<label for="pwd" class="h4">PassWord</label>	
								<input type="password" id="pwd" class="form-control" placeholder="PassWord" name="pwd" required>						
							</div>
							<div class="form-group">
								<input type="submit" class="form-control bg-primary text-white" value="Login">	
							</div>
							
						</form>
						<div class="text-center">
                        	<h4 class="d-inline">New Registration?</h4><br>
                     		<a href="userReg.jsp" style="text-decoration: none; font-size: 17px;">SignUp</a><br><br>
                     		
                        </div>
					</div>
				</div>
			</div>		
		</div>
	</div>
		<%
		  if (request.getAttribute("result") != null && (boolean)request.getAttribute("result")) {
		      
		%>
		  <script>
		      alert("Registration, Done Successfully!");
		  </script>
		<%
		      request.setAttribute("result", false);
		  }
		%>

</body>
</html>