<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.util.ArrayList"%>
     <%@ page import="com.rkgec.website.DAO.GetStudentDAO"%>
     <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<s:property value="roll"/>
<s:property value="nameofstudent"/>
<h4>bas!</h4>
<% GetStudentDAO getStudentDAO=new GetStudentDAO();
ArrayList<String> list = getStudentDAO.getList();

 out.println("Details::"+list);

%>
</body>
</html>