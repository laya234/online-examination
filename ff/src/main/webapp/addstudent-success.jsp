<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        header {
            background-color: #ff6f61;
            padding: 10px;
            text-align: center;
            color: white;
            animation: pulseHeader 2s infinite alternate;
        }

        .sidebar {
            flex: 0 0 200px;
            background-color: #444;
            color: white;
            padding: 20px;
            animation: slideInLeft 1s forwards;
        }

        nav a {
            display: block;
            text-decoration: none;
            color: white;
            padding: 10px;
            margin: 5px 0;
            transition: background-color 0.3s;
            animation: fadeInNav 1s forwards;
        }

        nav a:hover {
            background-color: #555;
        }

        .container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .content {
            flex: 1;
            padding: 20px;
            text-align: center;
            animation: fadeIn 1s forwards;
        }

        img {
            max-width: 100%;
            height: auto;
            border-radius: 50%; /* Circular shape */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            animation: pulseFooter 2s infinite alternate;
        }

        @keyframes pulseHeader {
            0% {
                transform: scale(1);
            }
            100% {
                transform: scale(1.05);
            }
        }

        @keyframes slideInLeft {
            from {
                opacity: 0;
                transform: translateX(-100%);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        @keyframes fadeInNav {
            from {
                opacity: 0;
                transform: translateY(-50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes pulseFooter {
            0% {
                transform: scale(1);
            }
            100% {
                transform: scale(1.05);
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome Student!</h1>
    </header>
    <div class="sidebar">
        <nav>
            <a href="#">Home</a>
            <a href="about.html">About Us</a>
            <a href="viewsubjects.jsp">Subjects</a>
            <a href="scontact.html">Contact Us</a>
            <a href="feedback.jsp">Feedback</a>
            <a href="home.jsp">Logout</a>
        </nav>
    </div>
    <div class="container">
        <div class="content">
            <h2>Main Content Area</h2>
            <img src="img/stanley-dai-73OZYNjVoNI-unsplash.jpg" alt="Placeholder Image">
        </div>
    </div>
    <footer>
        <p>&copy; 2024 Your Website. All rights reserved.</p>
    </footer>
</body>
</html>
