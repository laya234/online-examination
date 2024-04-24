<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            animation: slideInDown 0.5s ease forwards;
        }

        @keyframes slideInDown {
            0% {
                transform: translateY(-100%);
                opacity: 0;
            }
            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }

        h1 {
            margin-bottom: 20px;
            text-align: center;
            animation: fadeIn 1s ease forwards;
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 10px;
            font-weight: bold;
            animation: slideInLeft 0.5s ease forwards;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
            animation: slideInRight 0.5s ease forwards;
        }

        button {
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            animation: slideInUp 0.5s ease forwards;
        }

        button:hover {
            background-color: #0056b3;
        }

        @keyframes slideInLeft {
            0% {
                transform: translateX(-100%);
                opacity: 0;
            }
            100% {
                transform: translateX(0);
                opacity: 1;
            }
        }

        @keyframes slideInRight {
            0% {
                transform: translateX(100%);
                opacity: 0;
            }
            100% {
                transform: translateX(0);
                opacity: 1;
            }
        }

        @keyframes slideInUp {
            0% {
                transform: translateY(100%);
                opacity: 0;
            }
            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }
    </style>
</head>
<body>
<a href="addstudent-success.jsp"><button align:"right">Home</button></a>
    <div class="container">
        <h1>Feedback Form</h1>
        
        <form action="addfeedback.jsp" method="post">

            <label for="id">Feedback ID:</label>
            <input type="text" id="id" name="id" required>

            <label for="training">How was the training:</label>
            <select id="training" name="training" required>
                <option value="">Select</option>
                <option value="very_good">Very Good</option>
                <option value="good">Good</option>
                <option value="not_bad">Not Bad</option>
                <option value="bad">Bad</option>
            </select>

            <label for="trainer">How was the trainer:</label>
            <select id="trainer" name="trainer" required>
                <option value="">Select</option>
                <option value="excellent">Excellent</option>
                <option value="good">Good</option>
                <option value="average">Average</option>
                <option value="poor">Poor</option>
            </select>

            <!-- Additional Questions -->
            <label for="expectations">Did the training meet your expectations:</label>
            <select id="expectations" name="expectations" required>
                <option value="">Select</option>
                <option value="met">Met</option>
                <option value="not_met">Not Met</option>
            </select>

            <label for="rate">How would you rate the training materials:</label>
            <select id="rate" name="rate" required>
                <option value="">Select</option>
                <option value="excellent">Excellent</option>
                <option value="good">Good</option>
                <option value="average">Average</option>
                <option value="poor">Poor</option>
            </select>

            <label for="interactive">Were the training sessions interactive:</label>
            <select id="interactive" name="interactive" required>
                <option value="">Select</option>
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select>

            <label for="another">Would you attend another training session:</label>
            <select id="another" name="another" required>
                <option value="">Select</option>
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select>

            <button type="submit">Submit Feedback</button>
        </form>
    </div>
</body>
</html>
