<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Exam</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        /* Reset CSS */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Global Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            color: #333;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        /* Header Styles */
        header {
            background: linear-gradient(to right, #ff758c, #ff7eb3);
            color: white;
            text-align: center;
            padding: 20px 0;
            border-bottom: 4px solid #ffba92;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            animation: slideInDown 1s ease;
        }

        header h1 {
            font-size: 36px;
            margin-bottom: 10px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
        }

        .header-icon {
            margin-right: 10px;
            font-size: 32px;
        }

        /* Navigation Styles */
        nav {
            background: linear-gradient(to right, #3a1c71, #d76d77, #ffaf7b);
            color: white;
            text-align: left;
            width: 250px;
            position: fixed;
            top: 80px;
            bottom: 0;
            overflow-y: auto;
            border-right: 4px solid #333;
            box-shadow: 2px 0 4px rgba(0, 0, 0, 0.1);
            animation: slideInLeft 1s ease;
        }

        nav a {
            display: block;
            padding: 15px 20px;
            color: white;
            text-decoration: none;
            transition: background-color 0.3s ease;
            border-bottom: 1px solid transparent;
        }

        nav a:hover {
            background-color: rgba(255, 255, 255, 0.1);
            border-bottom: 1px solid #fff;
            transform: translateX(5px);
        }

        .nav-icon {
            margin-right: 10px;
            font-size: 18px;
        }

        /* Main Content Styles */
        .content {
            margin-left: 270px;
            padding: 40px;
            animation: slideInRight 1s ease;
        }

        .content h2 {
            font-size: 24px;
            margin-bottom: 20px;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
        }

        .content p {
            font-size: 16px;
            line-height: 1.6;
            margin-bottom: 20px;
        }

        /* Footer Styles */
        footer {
            background: linear-gradient(to right, #52c234, #061700);
            color: white;
            text-align: center;
            padding: 20px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
            border-top: 4px solid #a7c5eb;
            animation: slideInUp 1s ease;
        }

        footer p {
            font-size: 14px;
        }

        /* Keyframe Animations */
        @keyframes slideInDown {
            from {
                transform: translateY(-100%);
            }
            to {
                transform: translateY(0);
            }
        }

        @keyframes slideInLeft {
            from {
                transform: translateX(-100%);
            }
            to {
                transform: translateX(0);
            }
        }

        @keyframes slideInRight {
            from {
                transform: translateX(100%);
            }
            to {
                transform: translateX(0);
            }
        }

        @keyframes slideInUp {
            from {
                transform: translateY(100%);
            }
            to {
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <header>
        <h1><i class="fas fa-graduation-cap header-icon"></i>Online Exam</h1>
    </header>

    <div class="container">
        <nav>
            <a href="#"><i class="fas fa-home nav-icon"></i>Home</a>
            <a href="about.html"><i class="fas fa-info-circle nav-icon"></i>About Us</a>
            <a href="studentlogin.html"><i class="fas fa-user-graduate nav-icon"></i>Student Login</a>
            <a href="teacherlogin.html"><i class="fas fa-chalkboard-teacher nav-icon"></i>Teacher Login</a>
            <a href="adminlogin.html"><i class="fas fa-user-shield nav-icon"></i>Admin Login</a>
            <a href="contact.html"><i class="fas fa-envelope nav-icon"></i>Contact Us</a>
            <a href="feedback.jsp"><i class="fas fa-comment nav-icon"></i>Feedback</a>
        </nav>

        <div class="content">
            <h2>Welcome to Online Exam Platform</h2>
            <p>Online examination is a convenient and efficient way to assess knowledge and skills. With our platform, students can take exams from anywhere with an internet connection, eliminating the need for physical presence in a traditional exam hall. Our system ensures security and integrity of exams through various measures such as randomized questions, timed exams, and anti-cheating features.</p>
            <p>Prepare yourself for success by taking advantage of our online exam platform. Get started now!</p>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 Online Exam Platform. All Rights Reserved.</p>
    </footer>
</body>
</html>
