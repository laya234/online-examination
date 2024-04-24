<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Teachers Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        nav {
            background-color: #ff6f61;
            color: white;
            text-align: center;
            padding: 20px;
            animation: fadeInTop 1s ease-in-out;
        }

        nav h1 {
            margin: 10px 0;
            font-size: 32px;
        }

        .sidebar {
            background-color: #444;
            color: white;
            padding: 20px;
            text-align: center;
            animation: slideInLeft 1s ease-in-out;
            border-right: 2px solid #ff6f61;
            height: 100vh;
            position: fixed;
        }

        .sidebar h2 {
            margin: 10px 0;
            animation: fadeIn 1s ease-in-out;
        }

        .sidebar a {
            text-decoration: none;
            color: white;
            display: block;
            margin-bottom: 10px;
        }

        .sidebar a button {
            background-color: #ff6f61;
            color: white;
            border: none;
            padding: 10px 20px;
            width: 100%;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
            animation: fadeIn 1s ease-in-out, scaleIn 0.5s ease-in-out;
            border-radius: 5px;
        }

        .sidebar a button:hover {
            background-color: #ff8f7a;
            transform: scale(1.1);
        }

        img {
            display: block;
            margin: 20px auto;
            max-width: 100%;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeInTop {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes slideInLeft {
            from {
                opacity: 0;
                transform: translateX(-20px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
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

        @keyframes scaleIn {
            from {
                transform: scale(0);
            }
            to {
                transform: scale(1);
            }
        }

        /* Additional CSS */
        h2 {
            color: #ff6f61;
            transition: color 0.3s;
        }

        h2:hover {
            color: #ff8f7a;
        }

        nav h6 {
            font-size: 18px;
            margin-bottom: 10px;
        }

        /* Adjustments for smaller screens */
        @media screen and (max-width: 768px) {
            .sidebar {
                width: 200px;
            }
            .sidebar a button {
                padding: 8px 16px;
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <nav>
        <h6>Welcome</h6>
        <h1>Teachers Page</h1>
    </nav>
    <div class='sidebar'>
        <h2><a href="#"><button>Home</button></a></h2>
        <h2><a href="add-questions.html"><button>Questions</button></a></h2>
        <h2><a href="viewsubjectt.jsp"><button>Results</button></a></h2>
        <h2><a href="contact.html"><button>Contact Us</button></a></h2>
        <h2><a href="about.html"><button>About Us</button></a></h2>
        <h2><a href="teacherlogin.html"><button>Log Out</button></a></h2>
    </div>
    
    <img src="img/thisisengineering-raeng-h6gCRTCxM7o-unsplash.jpg" alt="Placeholder Image" />
</body>
</html>
