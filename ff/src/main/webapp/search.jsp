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
String searchType = request.getParameter("ssname");


User u =UserDao.getRecordByName(searchType);
%>

<% if (u != null) { %>
    <h2>User Details</h2>
    <table>
        <tr>
            <td>Name</td><td>:&nbsp;<%= u.getSname() %></td>
            
        </tr>
        <tr>
        <td>Password</td><td>:&nbsp;<%=u.getSpassword() %></td>
        </tr>
    </table>
<% } else { %>
    <p>No records found for the specified search criteria.</p>
<% } %>
</body>  
</html>
