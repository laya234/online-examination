<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="online_exam.UserDao"%>  
<jsp:useBean id="u" class="online_exam.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/> 
<% 
int i=UserDao.savet(u);
if(i>0)
{
	response.sendRedirect("teacherlogin.html");
}
else
{
	response.sendRedirect("addteacher-error.jsp");
}
%>

</body>
</html>