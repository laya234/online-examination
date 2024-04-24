<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Details</title>
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
<h1>Students Details</h1>
<%
List<User> list=UserDao.getAllStudents();
request.setAttribute("list",list);
%>
<form action="search.jsp" method="post">
    <table>
        <tr>
            <td>Search By Email:</td>
            <td><input type="text" name="ssname"/></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Search"></td>
        </tr>
    </table>
</form>
<center>
    <table>
        <tr>
            <th>Name of the Students</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${list}" var="u">
            <tr>
                <td>${u.getSname()}</td>
                <td><a href="deletestudent.jsp?sname=${u.getSname()}">Delete</a></td>
            </tr>
        </c:forEach>
        <tr>
            <td></td>
        </tr>
    </table>

</center>
</body>
</html>
