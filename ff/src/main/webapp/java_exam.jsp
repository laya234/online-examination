<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 
  
<%@page import="online_exam.UserDao,online_exam.User,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Users List</h1>    
<%  
List<User> list=UserDao.getAllRecordsJAVA();  
request.setAttribute("list",list);  
%>  
<c:if test="${not empty list}">
    <form action="submit_exam.jsp" method="post"> 
        <c:forEach var="user" items="${list}" varStatus="loop">
            <div>
                <p>Question ${loop.index + 1}: ${user.qname}</p>
                <label>
                    <input type="radio" name="q${loop.index + 1}" value="a">
                    Option A: ${user.aop}
                </label><br>
                <label>
                    <input type="radio" name="q${loop.index + 1}" value="b">
                    Option B: ${user.bop}
                </label><br>
                <label>
                    <input type="radio" name="q${loop.index + 1}" value="c">
                    Option C: ${user.cop}
                </label><br>
                <label>
                    <input type="radio" name="q${loop.index + 1}" value="d">
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







</body>
</html>