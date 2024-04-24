<%@page import="online_exam.User"%>
<%@page import="online_exam.UserDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.IOException"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>

<%
    String subject = ""; 
    int totalQuestions = 0;
    int correctAnswersCount = 0;
    List<User> correctAnswersList = new ArrayList<>(); 

    try {
        List<User> questionsList = (List<User>)UserDao.getAllRecordsAptitude();

        if (questionsList == null || questionsList.isEmpty()) {
            throw new NullPointerException("Question list is null or empty");
        }

        totalQuestions = questionsList.size();
        if (!questionsList.isEmpty()) {
            subject = questionsList.get(0).getSubject();
        }
        if (subject == null) {
            throw new NullPointerException("Subject is null");
        }
        
        correctAnswersList = UserDao.getCorrectAnswersApt();
        if (correctAnswersList.isEmpty()) {
            out.println("<h2>Correct answers for " + subject + " are not available</h2>");
        } else {
            for (int i = 1; i <= totalQuestions; i++) {
                String userAnswer = request.getParameter("q" + i);
                String correctAnswer = correctAnswersList.get(i - 1).getRop();

                if (userAnswer != null && userAnswer.equals(correctAnswer)) {
                    correctAnswersCount++;
                }
            }
        }
    } catch (Exception e) {
        out.println("<h2>An error occurred: " + e.getMessage() + "</h2>");
        e.printStackTrace(new PrintWriter(out));
    }
    String userEmail = (String) session.getAttribute("sname");
    if (userEmail == null || userEmail.isEmpty()) {
        response.sendRedirect("studentlogin.html");
        return; 
    }
    UserDao.insertResult(subject, totalQuestions, correctAnswersCount, userEmail);


    
%>

<html>
<head>
    <title>Exam Results</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
            color: #333;
        }

        p {
            margin-left: 20px;
            color: #666;
            margin-bottom: 10px;
        }

        form {
            text-align: center;
            margin-top: 20px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Exam Results</h1>
    <p>Subject: <%= subject %></p>
    <p>Total Questions: <%= totalQuestions %></p>

    <% if (!correctAnswersList.isEmpty()) { %>
        <p>Correct Answers: <%= correctAnswersCount %></p>
    <% } %>
    <form action="addstudent-success.jsp" method="post">
        <input type="submit" value="Go to Home Page">
    </form>
</body>
</html>
