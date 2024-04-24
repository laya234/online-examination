<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Subject Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa; /* Light gray */
        margin: 0;
        padding: 0;
    }
    
    h1 {
        text-align: center;
        margin-top: 20px;
        color: #333;
    }
    
    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        border: 1px solid #ccc;
        background-color: #fff;
    }
    
    th, td {
        padding: 10px;
        border: 1px solid #ccc;
        text-align: left;
    }
    
    th {
        background-color: #007bff; /* Bright blue */
        color: #fff;
    }
    
    tr:nth-child(even) {
        background-color: #f2f2f2; /* Light gray */
    }
    
    tr:hover {
        background-color: #e2e6ea; /* Lighter gray */
    }
    
    a {
        text-decoration: none;
        color: #007bff; /* Bright blue */
    }
    
    a:hover {
        text-decoration: underline;
        color: #0056b3; /* Darker blue */
    }
    
    .delete-link {
        color: #dc3545; /* Red */
    }
    
    .delete-link:hover {
        color: #bd2130; /* Darker red */
    }
    
    .add-button {
        display: block;
        width: 120px;
        margin: 20px auto;
        padding: 10px;
        text-align: center;
        background-color: #28a745; /* Green */
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        text-decoration: none;
    }
    
    .add-button:hover {
        background-color: #218838; /* Darker green */
    }
</style>
</head>
<body>
<%@page import="online_exam.User,online_exam.UserDao,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h1>Subject Details</h1>
<%
List<User> list=UserDao.getAllTeachers();
request.setAttribute("list",list);
%>
<center>
<table>
<tr>
<th>Name of the Teachers</th>
<th>Action</th>
</tr>
<c:forEach items="${list}" var="u">
<tr>
<td>${u.getTname()}</td>
<td><a class="delete-link" href="deleteteacher.jsp?tname=${u.getTname()}">Delete</a></td>
</tr>
</c:forEach>
<tr>
<td></td>
<td></td>
</tr>
</table>

</center>
</body>
</html>
