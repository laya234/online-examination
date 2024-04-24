<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        line-height: 1.6;
    }

    h1 {
        color: #333;
        text-align: center;
        margin-top: 20px;
        font-size: 32px;
        margin-bottom: 30px;
        animation: fadeInDown 1s ease-in-out;
    }

    h2 {
        color: #555;
        font-size: 24px;
        margin-top: 20px;
    }

    a {
        display: block;
        text-decoration: none;
        color: #fff;
        font-weight: bold;
        padding: 15px 20px;
        border-radius: 5px;
        margin-bottom: 10px;
        background-color: #007bff;
        border: 1px solid #007bff;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        transition: all 0.3s ease;
        animation: fadeIn 0.5s ease;
    }

    a:hover {
        background-color: #0056b3;
        transform: translateY(-3px);
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    #dateTime {
        text-align: center;
        margin-top: 20px;
        color: #777;
        font-size: 16px;
        margin-bottom: 20px;
        animation: fadeInUp 1s ease-in-out;
    }

    #dateTime span {
        color: #333;
        font-weight: bold;
    }

    .container {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        transition: box-shadow 0.3s ease;
        animation: fadeInUp 0.5s ease;
    }

    .container:hover {
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
    }

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

    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    @keyframes fadeInDown {
        from {
            opacity: 0;
            transform: translateY(-40px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    @keyframes slideInLeft {
        from {
            opacity: 0;
            transform: translateX(-40px);
        }
        to {
            opacity: 1;
            transform: translateX(0);
        }
    }

    @keyframes pulse {
        0% { transform: scale(1); }
        50% { transform: scale(1.05); }
        100% { transform: scale(1); }
    }

    @keyframes slideInRight {
        from {
            opacity: 0;
            transform: translateX(40px);
        }
        to {
            opacity: 1;
            transform: translateX(0);
        }
    }
</style>
<script>
    function displayDateTime() {
        var currentDate = new Date();
        var options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
        var dateTimeString = currentDate.toLocaleDateString('en-US', options) + " " + currentDate.toLocaleTimeString();
        document.getElementById("dateTime").innerHTML = "Current Date & Time: <span>" + dateTimeString + "</span>";
    }
</script>
</head>
<body onload="displayDateTime()">
<div class="container">
    <h1>Welcome To Admin Page</h1>
    <h2>Navigation</h2>
    <a href="viewstudents.jsp" style="animation-delay: 0.2s;">Student Details</a>
    <a href="viewresults.jsp" style="animation-delay: 0.4s;">Student Results</a>
    <a href="viewteachers.jsp" style="animation-delay: 0.6s;">Teachers Details</a>
    <a href="viewsubjects.jsp" style="animation-delay: 0.8s;">Subjects</a>
    <a href="viewfeedback.jsp" style="animation-delay: 1s;">Feedbacks</a>
    <a href="adminlogin.html" style="animation-delay: 1.2s;">LogOut</a>
    <div id="dateTime"></div>
</div>
</body>
</html>
