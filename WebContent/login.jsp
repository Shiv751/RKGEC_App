<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Raj Kumar Goel Engineering College</title>
</head>
<style>

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 10%;
}

.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 20%;
	border-radius: 100%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="index.html"><h4>
						<strong>RKGEC</strong>
					</h4></a>
			</div>
		</div>
	</nav>

	<div class="container">
		<div class="row">
		  <div class="col-sm-6">
			<h2>Admin Login!</h2>

			<form action="HomeAction" method="post">
				<div class="imgcontainer">
					<img src="image/rkgeclogofull.png" alt="Avatar" class="avatar">
				</div>

				<div class="container">
					<label><b>Username</b></label> <input type="text"
						placeholder="Enter Username" name="userid" required> <label><b>Password</b></label>
					<input type="password" placeholder="Enter Password" name="password"
						required>

					<button type="submit">Login</button>
					<button type="reset">Clear</button>
					<input type="checkbox" checked="checked"> Remember me
				</div>

				<div class="container" style="background-color: #f1f1f1">
					<button type="button" class="cancelbtn">Cancel</button>
					<span class="psw">Forgot <a href="#">password?</a></span>
				</div>
			</form>
			</div>
			<div class="col-sm-6"> 
			<a href="form.jsp"> <h1>SignUp</h1></a>
			</div>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</body>
</html>