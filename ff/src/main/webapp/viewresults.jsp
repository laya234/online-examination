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
        background-color: #f0f7fa; /* Light blue */
        margin: 0;
        padding: 0;
    }
    
    h1 {
        text-align: center;
        margin-top: 20px;
        color: #333;
    }
    
    form {
        text-align: center;
        margin-bottom: 20px;
    }
    
    table {
        width: 80%;
        margin: 0 auto;
        border-collapse: collapse;
        border: 1px solid #57a0d3; /* Blue */
        background-color: #fff;
    }
    
    th, td {
        padding: 10px;
        border: 1px solid #57a0d3; /* Blue */
        text-align: left;
    }
    
    th {
        background-color: #007bff; /* Bright blue */
        color: #fff;
    }
    
    tr:nth-child(even) {
        background-color: #f5f5f5; /* Light gray */
    }
    
    tr:hover {
        background-color: #e2eef9; /* Light blue */
    }
    
    a {
        text-decoration: none;
        color: #007bff; /* Blue */
    }
    
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<%@page import="online_exam.User,online_exam.UserDao,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h1>Results</h1>
<%
List<User> list=UserDao.getAllResults();
request.setAttribute("list",list);
%>
<form action="searchr.jsp" method="post">
    <table>
        <tr>
            <td>Search By Email:</td>
            <td><input type="text" name="sssname"/></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Search"></td>
        </tr>
    </table>
</form>
<center>
     <table>
            <thead>
                <tr>
                    <th>Student Email</th>
                    <th>Total Questions</th>
                    <th>Correct Answers</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${list}" var="result">
                    <tr>
                        <td>${result.getSname()}</td> <!-- Display student email -->
                        <td>${result.getTotalQuestions()}</td>
                        <td>${result.getCorrectAnswers()}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
</center>
</body>
</html>
