<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script src="script/myscript.js"></script>
    <title>Payment Insert</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap');
        body {
            font-family: 'Poppins', sans-serif;
            color: #2c3e50; /* Dark navy */
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            background-color: #e5f5f9; /* Light teal background */
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

        h1.capitalize {
            text-align: center;
            margin: 30px 0;
            color: #34495e; /* Dark navy */
        }

        .payForm {
            background: white;
            border-radius: 12px;
            box-shadow: 0 6px 25px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin: 20px auto;
            width: 90%;
            max-width: 500px;
        }

        .payForm h3 {
            margin-bottom: 15px;
            color: #1abc9c; /* Teal heading */
            font-weight: 500;
        }

        input[type="text"], input[type="submit"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #ff6b6b; /* Coral button */
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #e74c3c; /* Darker coral on hover */
            transform: translateY(-2px); /* Lift effect */
        }

        label {
            display: block;
            margin: 10px 0;
            font-size: 16px;
        }

        input[type="checkbox"] {
            margin-right: 10px;
            vertical-align: middle;
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

    <h1 align="center" class="capitalize">Add Card Details</h1>

    <div class="payForm">
        <form action="pay" method="post">
            <fieldset>
                <legend>Payment Details</legend>
                <h4>Card Name:</h4>
                <input type="text" id="propertyname" name="propertyname" required placeholder="Enter Name for card (e.g., Card One)">

                <h4>Customer Name:</h4>
                <input type="text" id="cname" name="name" required/>

                <h4>Card Number:</h4>
                <input type="text" id="cno" name="cardno" placeholder="xxxxxxxxxxxxxxxx" pattern="[0-9]{16}" required/>

                <h4>Expire Date:</h4>
                <input type="text" id="expire" name="cardexpdate" placeholder="yy/mm" pattern="[0-9]{2}/[0-9]{2}" required/>

                <h4>CVC:</h4>
                <input type="text" id="cvc" name="cvc" placeholder="xxx" pattern="[0-9]{3}" required/>
            </fieldset>

            <label>
                <input type="checkbox" id="policy" name="policy" onclick="enableButton()" required> Accept Privacy Policy Terms
            </label>

            <center><input type="submit" id="insertbtn" name="insertbtn" value="SUBMIT" disabled></center>
        </form>
        <center><h3>Accepted Cards</h3></center>
        <center><img class="cards" src="images/cards.png" width="40%" height="auto"></center>
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
