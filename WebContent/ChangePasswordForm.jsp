<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Reset password</title>
<link rel="icon" type="image/png" href="image/fevicon.png"/>
<link rel='stylesheet prefetch'
	href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="css/style.css">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="tutorial/font-awesome/css/font-awesome.min.css">
<link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">
<link href="css/cover.css" rel="stylesheet">
<style type="text/css">
a:hover, a:active {
	border-bottom: 3px solid red;
	text-decoration: none;
	color: blue;
}
</style>
</head>
<body>
<nav class="navbar navbar-inverse ">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" id="menu1"
					data-toggle="collapse" data-target="#myNavbar">
					<span class="sr-only">Toggle navigation</span> Menu <i
						class="fa fa-bars"></i>

				</button>
				<a class="navbar-brand" href="index.html">RKGEC</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">

					<li><a href="imagegallry.html">IMAGES</a></li>
					<li><a href="company.html">PLACEMENT</a></li>
					<li><a href="login.jsp">SIGN IN</a></li>
					<li><a href="feculty.html">FACULTY</a></li>
					<li><a href="#">LIFE@RKGEC</a></li>
					<li><a href="#">DEPARTMENT</a></li>
					<li><a href="#">ACTIVITIES</a></li>
				</ul>
			</div>

		</div>
	</nav>

					</br><h2 align="center"><strong>Reset your password here</strong></h2></br>
<script language="javascript">
function fncSubmit()
{

	if(document.ChangePasswordForm.username.value == "")
	{
		alert('Please input User Name first');
		document.ChangePasswordForm.username.focus();
		return false;
	}	

	if(document.ChangePasswordForm.newpassword.value == "")
	{
		alert('Please input New Password');
		document.ChangePasswordForm.newpassword.focus();		
		return false;
	}	

	if(document.ChangePasswordForm.conpassword.value == "")
	{
		alert('Please input Confirm Password');
		document.ChangePasswordForm.conpassword.focus();		
		return false;
	}	

	if(document.ChangePasswordForm.newpassword.value != document.ChangePasswordForm.conpassword.value)
	{
		alert('Confirm Password Not Match');
		document.ChangePasswordForm.conpassword.focus();		
		return false;
	}	

		document.ChangePasswordForm.submit();
}
</script>
<form name="ChangePasswordForm" action="ForgetPasswordAction"  method="post"  OnSubmit="return fncSubmit();"> 
 
  <table border="2"  align="center" bgcolor="#2B60DE" >
    
      <tr>
        <td><strong>User Name</strong></td>
       <TD><input name="username" type="text" style="background-color: black;" id="UsrNm" size="20" placeholder="Enter UserName"></td>
      </tr>
      <tr>
        <td><strong>New Password</strong></td>
        <td><input name="newpassword" type="password" style="background-color: black;" id="newpassword" placeholder="Enter NewPassword">
        </td>
      </tr>
      <tr>
        <td><strong>Confirm Password</strong></td>
        <td><input name="conpassword" type="password" style="background-color: black;" id="conpassword" placeholder="Confirm password">
        </td>
      </tr>
      <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" style="background-color: navy;" value="Save">
      <input type="reset" name="Reset" style="background-color: red;" value="Clear"></td>
      </tr>
   
  </table>
  </form>
</body>
</html>