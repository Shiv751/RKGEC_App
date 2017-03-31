<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Raj Kumar Goel Engineering College</title>
<link rel="icon" type="image/png" href="image/fevicon.png" />
</head>
<style>
input[type=text], input[type=password] {
	width: 20%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #4CAF50;
	padding: 10px 18px;
	width: 8%;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 20%;
	border-radius: 100%;
}

a:hover, a:active {
	border-bottom: 3px solid red;
	text-decoration: none;
	color: blue;
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


a:hover, a:active {
	border-bottom: 3px solid red;
	text-decoration: none;
	color: black;
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<body>
		<nav class="navbar navbar-primary ">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" id="menu1"
					data-toggle="collapse" data-target="#myNavbar">
					<span class="sr-only">Toggle navigation</span> Menu <i
						class="fa fa-bars"></i>

				</button>

				<a href="index.html"><h3>RKGEC</h3></a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">

					<li><a href="#goImage">IMAGES</a></li>
					<li><a href="company.html">PLACEMENT</a></li>
					<li><a href="login.jsp">SIGN IN</a></li>

					<li><a href="feculty.html">FACULTY</a></li>
					<li><a href="#acchive">ARCHIVES</a></li>
					<li><a href="feculty.html">DEPARTMENT</a></li>
					<li><a href="#pleaseContact">Contact Us</a></li>
				</ul>
			</div>

		</div>
	</nav>

      
			<h align="center"2></h2>
					<div class="container" style="background-color: #f1f1f1">
					<s:form action="HomeAction" method="post">
			<div class="imgcontainer">
			    <h1>Admin Login!</h1>
				<img src="image/logoRkgec.png" alt="Avatar" class="avatar"
					align="middle">
			</div>
				<label><b>Username</b></label> <input type="text"
					placeholder="Enter Username" name="userid" required="required">
				</br> <label><b>Password</b></label> <input type="password"
					placeholder="Enter Password" name="password"
					pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
					title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
					required="required"> </br>

				<button type="submit">Login</button>
				<button type="reset">Clear</button>
				<br> <input type="checkbox" checked="checked"> Remember
				me
				<p>
					<a href="ChangePasswordForm.jsp">Forgot Password?</a>
				</p>
			</div>
	

	<!-- <div class="container" style="background-color: #f1f1f1"> -->
	<!-- <button type="button" class="cancelbtn">Cancel</button> -->


	<!-- </div> -->
	</s:form>
	</div>

	</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</body>
</html>