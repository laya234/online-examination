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
    border: 1px solid #ccc; /* Light gray */
    padding: 8px;
    text-align: left;
}

th {
    background-color: #f2f2f2; /* Light gray */
    color: #333;
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

.btn {
    display: inline-block;
    padding: 10px 20px;
    margin-top: 20px;
    background-color: #007bff; /* Bright blue */
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    text-decoration: none;
}

.btn:hover {
    background-color: #0056b3; /* Darker blue */
}

.btn-danger {
    background-color: #dc3545; /* Red */
}

.btn-danger:hover {
    background-color: #c82333; /* Darker red */
}
</style>
</head>
<body>
<%@page import="online_exam.User,online_exam.UserDao,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h1>Subject Details</h1>
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
<td><a href="${u.getSname()}Result.jsp">${u.getSname()}</a></td>
</tr>
</c:forEach>
</table>
<a href="addstudent-success.jsp" class="btn">Home</a>
<a href="deleteall.jsp" class="btn btn-danger">Delete All</a>
</center>

</body>
</html>
