<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Login Page</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<!-- Fixed top navbar with brand as logo image tags -->
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" datatarget="#my">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html"><h4>
					<strong>RKGEC</strong>
				</h4></a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="my">
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="#">Link</a></li>
				<li><a href="#">Link</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
	<div class="container">

		<div class="row">
			<div
				class="col-md-6 col-sm-6 col-xs-6 col-xs-offset-3 col-sm-offset-3 col-md-offset-3">
				<form action="FormAction" method="post">
					<div class="form-group ">
						<label for="studentName">Name Of Student*</label> <input
							class="form-control input-sm" type="text" id="studentName"
							required="true" placeholder="Full Name" name="name" />
					</div>
					<div class="form-group">
						<label for="studentRoll">Roll no* </label> <input
							class="form-control input-sm" type="text" required="true"
							id="studentRoll" placeholder="roll number" name="roll" maxlength="10" />
					</div>
					<div class="form-group">
						<label for="studentBranch">Branch</label> <select
							class="form-control input-sm" name="branch"/>
						<option>Branch</option>
						<option>Computer Science & Engineering</option>
						<option>Electronics & Communication</option>
						<option>Electrical & Electronics</option>
						<option>Mechanical</option>
						<option>civil</option>
						</select>
					</div>
					<div class="form-group">
						<label for="year">Academic Year*</label> <select
							class="form-control input-sm" name="year"/>
						<option>year</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						</select>
					</div>
					<div class="form-group">
						<label for="percentage">10<sup>th</sup> %*
						</label> <input class="form-control" type="text" id="percentage"
							placeholder="0.0%" required="true" name="percentage_10"/>
					</div>
					<div class="form-group">
						<label for="percentage">12<sup>th</sup> %*
						</label> <input class="form-control" type="text" required="true"
							id="percentage" placeholder="0.0%" name="percentage_12" />
					</div>
					<div class="form-group">
						<label for="percentage">B.Tech % till now* </label> <input
							class="form-control" type="text" required="true" id="percentage"
							placeholder="0.0%" name="percentage_btech"/>
					</div>

					<div class="form-group">
						<label for="backLog">Current back logs</label> <input
							class="form-control" type="text" id="backLog" placeholder="0" name="backs"/>
					</div>
					<div class="form-group">
						<label for="inputEmail">Email*</label> <input class="form-control"
							type="email" required="true" id="inputEmail"
							placeholder="email@example.com" name="email" />
					</div>
					<div class="form-group">
						<label for="mobile">Contact Number* </label> <input
							class="form-control" type="tel" required="true" id="mobile"
							placeholder="9999999999" maxlength="10" name="phone" />
					</div>
					<div class="form-group">
						<label for="Other">Other</label>
						<textarea class="form-control" type="text" id="Other"
							placeholder="Write Anything which u want to ask?" rows="3" name="quiery"></textarea>
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
					<button type="reset" class="btn btn-default">Clear</button>
					<p>
						If already registered <a href="login.jsp">Login</a> here
					</p>
				</form>

			</div>
			<div class="col-md-6 col-xs-6 col-sm-6"></div>
		</div>
	</div>
	<div class="footer">
		<p>
			<i>RKGEC</i>
		</p>
	</div>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

	<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>