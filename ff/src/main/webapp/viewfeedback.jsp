<head>
    <meta charset="ISO-8859-1">
    <title>Feedback Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: center;
            color: #007bff; /* Bright blue color for heading */
            margin-top: 20px; /* Add some space above the heading */
        }
        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add shadow to the table */
        }
        th, td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: left;
        }
        th {
            background-color: #007bff; /* Bright blue color for table header */
            color: #fff; /* White text color for table header */
            font-weight: bold;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #e9e9e9;
        }
        center {
            margin-top: 20px;
        }
        .bright-button {
            padding: 10px 20px;
            background-color: #ff6f00; /* Bright orange color for button */
            color: #fff; /* White text color for button */
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none; /* Remove default underline */
            display: inline-block; /* Make the button inline */
            margin-top: 20px; /* Add some space above the button */
            transition: background-color 0.3s ease; /* Smooth transition on hover */
        }
        .bright-button:hover {
            background-color: #ff9500; /* Lighter shade of orange on hover */
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        p {
            color: #333; /* Dark gray color for paragraphs */
        }
        ol, ul {
            color: #333; /* Dark gray color for lists */
            margin-left: 30px;
        }
        a {
            color: #007bff;
            text-decoration: none;
        }
        a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
<%@page import="online_exam.User,online_exam.UserDao,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h1>Feedback Details</h1>
<%
    List<User> list=UserDao.getAllfeedback();
    request.setAttribute("list",list);
%>
<center>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Training</th>
            <th>Trainer</th>
            <th>Expectations</th>
            <th>Rate</th>
            <th>Interactive</th>
            <th>Another</th>
        </tr>
        <c:forEach items="${list}" var="u">
            <tr>
                <td>${u.id}</td>
                <td>${u.training}</td>
                <td>${u.trainer}</td>
                <td>${u.expectations}</td>
                <td>${u.rate}</td>
                <td>${u.interactive}</td>
                <td>${u.another}</td>
            </tr>
        </c:forEach>
    </table>
</center>
</body>
</html>