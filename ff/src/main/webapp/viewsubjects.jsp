<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Subject Details</title>
<style>
/* Add your CSS styles here */
body {
    font-family: Arial, sans-serif;
    background-color: #f0f7fa; /* Light blue */
    margin: 0;
    padding: 0;
}

h1 {
    text-align: center;
    margin-top: 20px;
    color: #333;
}

table {
    border-collapse: collapse;
    width: 80%;
    margin: auto;
}

th, td {
    border: 1px solid #57a0d3; /* Bright blue */
    padding: 8px;
    text-align: left;
}

th {
    background-color: #007bff; /* Bright blue */
    color: #fff;
}

tr:nth-child(even) {
    background-color: #f5f5f5; /* Light gray */
}

a {
    text-decoration: none;
    color: #007bff; /* Bright blue */
}

a:hover {
    color: #0056b3; /* Darker blue */
}

button {
    float: right;
    margin-top: 20px;
    margin-right: 20px;
    padding: 10px 20px;
    background-color: #007bff; /* Bright blue */
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3; /* Darker blue */
}
</style>
</head>
<body>
<%@page import="online_exam.User,online_exam.UserDao,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h1>Subject Details</h1>
<a href="addstudent-success.jsp"><button>Home</button></a>
<%
List<User> list = UserDao.getAllSubjects();
request.setAttribute("list", list);
%>
<center>
<table>
<tr>
<th>Name of the Subjects</th>
</tr>
<c:forEach items="${list}" var="u">
<tr>
<td><a href="${u.getSname()}_inst.html">${u.getSname()}</a></td>
</tr>
</c:forEach>
</table>
</center>

</body>
</html>
