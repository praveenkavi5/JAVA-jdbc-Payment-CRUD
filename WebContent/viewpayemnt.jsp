<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Payment Handling</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap');
        body {
            background-color: #e5f5f9; /* Light teal background */
            font-family: 'Poppins', sans-serif;
            color: #2c3e50; /* Dark navy text */
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .menubar {
            background-color: #1abc9c; /* Vibrant teal */
            color: white;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .menubar h1 {
            margin: 0;
            font-size: 28px;
            font-weight: 700;
        }

        .menubar ul {
            list-style: none;
            padding: 0;
            display: flex;
        }

        .menubar li {
            margin: 0 20px;
        }

        .menubar a {
            color: white;
            text-decoration: none;
            font-size: 18px;
            transition: color 0.3s ease;
        }

        .menubar a:hover {
            color: #ff6b6b; /* Coral hover */
        }

        .contt {
            background-color: rgba(240, 245, 245, 0.9);
            width: 90%;
            max-width: 700px;
            border: 15px solid #1abc9c; /* Teal border for the content box */
            font-size: 16px;
            padding: 25px;
            border-radius: 12px;
            margin: 50px auto;
            text-align: center;
            box-shadow: 0 6px 25px rgba(0, 0, 0, 0.2);
        }

        input[type="submit"] {
            background-color: #ff6b6b; /* Coral button */
            color: white;
            border: none;
            padding: 12px;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
            font-size: 16px;
            width: 100%; /* Full width button */
        }

        input[type="submit"]:hover {
            background-color: #e74c3c; /* Darker coral on hover */
            transform: translateY(-2px); /* Lift effect */
        }

        footer {
            background-color: #34495e; /* Dark navy footer */
            color: white;
            padding: 20px;
            text-align: center;
            margin-top: auto;
        }

        .footer-container {
            display: flex;
            justify-content: space-between;
            max-width: 1170px;
            margin: 0 auto;
            flex-wrap: wrap;
        }

        .col {
            flex: 1;
            margin: 0 15px;
            min-width: 200px;
        }

        footer h2 {
            margin-bottom: 10px;
            font-size: 18px;
            font-weight: 600;
        }

        footer p {
            margin: 0;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="menubar">
        <div class="leftmenu">
            <h1 class="text">Online Medicine Ordering</h1>
        </div>
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="about.jsp">About Us</a></li>
            <li><a href="services.jsp">Services</a></li>
            <li><a href="contactus.jsp">Contact Us</a></li>
        </ul>
    </div>

    <div class="contt">
        <form action="view" method="post">
            <h1 align="center" class="capitalize">Payment Handling</h1><br>
            <h3>All the details are saved in the Payment Handling table.</h3>
            <h4>Payment Handling can Update/Delete these details.</h4>
            <input type="submit" name="viewbtn" value="View Payment Table">
        </form>
    </div>

    <footer>
        <div class="footer-container">
            <div class="col">
                <h2>About Us</h2>
            </div>
            <div class="col">
                <h2>Find Us</h2>
                <p>Facebook: <br>Instagram: <br>Email: support@qwert.com</p>
            </div>
            <div class="col">
                <h2>Location</h2>
                <p>No 14<br>Malabe.</p>
            </div>
            <div class="col">
                <h2>Hotline</h2>
                <p>+94 123 123 123<br>+94 456 456 456</p>
            </div>
        </div>
    </footer>
</body>
</html>
