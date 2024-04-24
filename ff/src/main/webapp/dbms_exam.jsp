
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DBMS Exam</title>
<script>
    window.onload = function() {
        var timeLeft = 1800; // 30 minutes in seconds
        var timerElement = document.getElementById("timer");

        function updateTimer() {
            var minutes = Math.floor(timeLeft / 60);
            var seconds = timeLeft % 60;
            timerElement.innerText = pad(minutes) + ":" + pad(seconds);
            timeLeft--;
            if (timeLeft < 0) {
                clearInterval(timerInterval);
                submitExam();
            }
        }

        function pad(value) {
            return value < 10 ? "0" + value : value;
        }

        var timerInterval = setInterval(updateTimer, 1000);

        function submitExam() {
            // Submit the exam automatically
            document.forms["examForm"].submit();
        }
    };
</script>

<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
        animation: fadeIn 0.5s ease-in-out;
    }

    h1 {
        text-align: center;
        margin-top: 20px;
        color: #333;
        font-size: 28px;
    }

    form {
        max-width: 600px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    div {
        margin-bottom: 20px;
    }

    p {
        font-weight: bold;
        margin-bottom: 10px;
        color: #555;
    }

    label {
        display: block;
        margin-bottom: 5px;
        color: #333;
    }

    input[type="radio"] {
        margin-right: 5px;
    }

    .hidden-answer {
        display: none;
    }

    button {
        display: block;
        margin-top: 20px;
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #0056b3;
    }

    #t {
        position: absolute;
        top: 5px;
        right: 10px;
        font-size: 20px;
        color: #777;
    }

    #timer {
        position: fixed;
        top: 10px;
        right: 10px;
        font-size: 50px;
        color: #333;
    }
    
    /* Animations */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes slideInUp {
            from {
                transform: translateY(20px);
            }
            to {
                transform: translateY(0);
            }
        }
</style>
</head>
<body>

<h1>DBMS Exam</h1>
<div id="t"><h2>Remaining Time</h2></div>
<div id="timer"></div>

<%@page import="online_exam.UserDao,online_exam.User,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<%
    String userEmail = (String) session.getAttribute("sname");
    String examSubject = "DBMS"; 

    // Check if the user has already taken the exam
    boolean hasTakenExam = UserDao.hasTakenExam(userEmail, examSubject);

    if (hasTakenExam) {
%>
    <script type="text/javascript">
        alert("You have already taken the exam!");
        window.location.replace("viewsubjects.jsp"); 
    </script>
<% } else { %>
    <%  
        List<User> list = UserDao.getAllRecordsDBMS();  
        request.setAttribute("list", list);  
    %>
    <c:if test="${not empty list}">
        <form name="examForm" action="submit_examdbms.jsp" method="post"> 
            <c:forEach var="user" items="${list}" varStatus="loop">
                <div>
                    <p>Question ${loop.index + 1}: ${user.qname}</p>
                    <label>
                        <input type="radio" name="q${loop.index + 1}" value="A">
                        Option A: ${user.aop}
                    </label><br>
                    <label>
                        <input type="radio" name="q${loop.index + 1}" value="B">
                        Option B: ${user.bop}
                    </label><br>
                    <label>
                        <input type="radio" name="q${loop.index + 1}" value="C">
                        Option C: ${user.cop}
                    </label><br>
                    <label>
                        <input type="radio" name="q${loop.index + 1}" value="D">
                        Option D: ${user.dop}
                    </label><br>
                    <div class="hidden-answer">
                        <input type="hidden" name="correctAnswer${loop.index + 1}" value="${user.rop}">
                    </div>
                </div>
            </c:forEach>
            <button type="submit">Submit</button>
        </form>
    </c:if>
<% } %>
</body>
</html>
