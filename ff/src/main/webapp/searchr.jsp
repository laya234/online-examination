<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Search Results</title>  
    <!-- Include html2pdf library -->
    <script src="https://raw.githack.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js"></script>
</head>  
<body>  
<%@page import="online_exam.UserDao,online_exam.User"%>  
  
<%
String searchType = request.getParameter("sssname");


User u =UserDao.getResultByName(searchType);
%>

<% if (u != null) { %>
    <h2>User Details</h2>
     <table>
        <tr>
            <td>Student E-Mail</td><td>:&nbsp;<%= u.getSname() %></td>
            
        </tr>
        <tr>
        <td>Total Questions</td><td>:&nbsp;<%=u.getTotalQuestions()%></td>
        </tr>
        <tr>
            <td>Correct Answers</td><td>:&nbsp;<%= u.getCorrectAnswers() %></td>
            
        </tr>
    </table>
<% } else { %>
    <p>No records found for the specified search criteria.</p>
<% } %>
</body>  
</html>
