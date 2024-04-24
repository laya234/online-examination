<%@page import="online_exam.User, online_exam.UserDao, java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Aptitude Result</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f8f8;
    }

    h1 {
        text-align: center;
        color: #007bff;
    }

    table {
        border-collapse: collapse;
        width: 80%;
        margin: auto;
        border: 1px solid #ccc;
        border-radius: 5px;
        overflow: hidden;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        background-color: #fff;
        animation: fadeIn 1s ease-in-out;
    }

    th, td {
        border: 1px solid #ccc;
        padding: 8px;
        text-align: left;
    }

    th {
        background-color: #f2f2f2;
        color: #333;
    }

    td {
        color: #666;
    }

    tbody tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    tbody tr:hover {
        background-color: #e6f7ff;
    }

    center {
        margin-top: 20px;
    }

    /* Animation keyframes */
    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(-20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    /* Hover animation */
    table tbody tr {
        transition: background-color 0.3s ease;
    }

    table tbody tr:hover {
        background-color: #dff9fb;
    }
</style>
</head>
<body>
    <h1>Aptitude Result</h1>
    <% List<User> resultList = UserDao.getResultByAptitude();
       request.setAttribute("resultList", resultList);
    %>
    
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
                <c:forEach items="${resultList}" var="result">
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
