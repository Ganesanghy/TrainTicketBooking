<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
 #div1{
 width:200px;
 border : 5px solid red;
 	margin:auto;
 }
</style>
<script type="text/javascript">
function valid(){
	var name = document.getElementById("name").value;
	if(name == ''){
		document.getElementById("errname").innerText = "please enter name";
		return false;
	}
}

$(document).ready(function(){
	$("#form").submit(function(e){
		var valid = true;
		if($("#name").val() === ''){
			$("errname").text("please enter name");
			valid = false;
		}
		if(valid){
			var formData = new FormData();
			formData.append('name',$("#name").val());
			formData.append('gender'$("input[name:'option']:checked").val());
			$.ajax({
				type:'POST',
				url:'servlet',
				data : formData,
				success : function(data){
					
				},
				error:function(){
					
				}
			});
		}
	});
});
</script>
</head>
<body>
<div id="div1">


	<form action="" method="post" id="form" onsubmit="return valid()">
		<input type="text" id="name" placeholder="name">
		<p id="errname"></p>
		<input type="submit">
	</form>
	
	</div>
</body>
</html>