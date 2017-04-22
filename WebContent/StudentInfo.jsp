<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="s" uri="/struts-tags" %>
  <%--  <%@ page  import="javax.servlet.http.HttpSession" %> --%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="image/fevicon.png"/>
<link rel='stylesheet prefetch'
	href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="css/style.css">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="tutorial/font-awesome/css/font-awesome.min.css">
<link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

<body><nav class="navbar navbar-inverse ">
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
<%
	String sbranch_student=(String)session.getAttribute("sbranch_student");
String sRoll=(String)session.getAttribute("sRoll");
String snameofstudent=(String)session.getAttribute("snameofstudent");
String syear_student=(String)session.getAttribute("syear_student");
String sbacklog_student=(String)session.getAttribute("sbacklog_student");
%>
<h4 align="center">Student's Detail</h4>
<TABLE cellpadding="15" align="CENTER" border="3" style="background-color: #ffffcc;">
<TR>
<th>ROLL NO</th>
<TD><%=sRoll%></TD>
</TR>
<tr>
<th>NAME</th>
<TD><%=snameofstudent%></TD>
</TR>
<tr>
<th>BRANCH</th>
<TD><%=sbranch_student%></TD>
</TR>
<TR>
<th>CURRENT YEAR</th>
<TD><%=syear_student%></TD>
</TR>
<TR>
<th>ANY BACKLOG</th>
<TD><%=sbacklog_student%></TD>
</TR>
</TABLE>
<%-- sName: <s:property value="sName"/> --%>
</body>
</html>