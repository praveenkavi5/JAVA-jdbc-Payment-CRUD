<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Payment Management</title>
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

        .formcontent {
            margin: 30px auto;
            width: 90%;
            max-width: 600px;
            background-color: white; /* White background for the form */
            border-radius: 12px;
            padding: 25px;
            box-shadow: 0 6px 25px rgba(0, 0, 0, 0.1);
        }

        h1.capitalize {
            text-align: center;
            margin: 20px 0;
            color: #1abc9c; /* Teal heading */
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-size: 16px;
            color: #34495e; /* Darker text */
        }

        input[type="text"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border-radius: 8px;
            border: 1px solid #ccc;
            box-sizing: border-box;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus {
            border-color: #1abc9c;
        }

        input[type="submit"] {
            background-color: #ff6b6b; /* Coral button */
            color: white;
            border: none;
            padding: 12px;
            border-radius: 8px;
            cursor: pointer;
            font-size: 18px;
            font-weight: 500;
            transition: background-color 0.3s ease, transform 0.2s ease;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #e74c3c;
            transform: translateY(-2px);
        }

        footer {
            background-color: #34495e; /* Dark navy footer */
            color: white;
            padding: 30px;
            text-align: center;
            margin-top: auto;
        }

        footer .footer-container {
            display: flex;
            justify-content: space-between;
            max-width: 1170px;
            margin: 0 auto;
            flex-wrap: wrap;
        }

        footer .col {
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

    <%
        String paymentid = request.getParameter("paymentid"); 
        String propertyname = request.getParameter("propertyname");
        String name = request.getParameter("name");
        String cardno = request.getParameter("cardno");
        String cardexpdate = request.getParameter("cardexpdate");
        String cvc = request.getParameter("cvc");
    %>

    <div class="formcontent">
        <h1 align="center" class="capitalize">Update Payment Details</h1> 
        <form action="update" method="post">
            <label for="propertyname">Card Name:</label>
            <input type="text" id="propertyname" name="propertyname" value="<%= propertyname %>" required>

            <label for="paymentid">Card ID:</label>
            <input type="text" class="idper" id="paymentid" name="paymentid" value="<%= paymentid %>" readonly>

            <label for="name">Customer's Name:</label>
            <input type="text" id="name" name="name" value="<%= name %>" required>

            <label for="cardno">Card Number:</label>
            <input type="text" id="cardno" name="cardno" value="<%= cardno %>" required>

            <label for="cardexpdate">Card Expire Date:</label>
            <input type="text" id="cardexpdate" name="cardexpdate" value="<%= cardexpdate %>" required>

            <label for="cvc">CVC:</label>
            <input type="text" id="cvc" name="cvc" value="<%= cvc %>" required>

            <input type="submit" name="submit" value="Update The Data">
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
