<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Online Medicine Ordering - Home</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap');
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f7fc;
            color: #333;
            line-height: 1.6;
            overflow-x: hidden;
        }

        /* Navbar */
        .navbar {
            background-color: #1abc9c;
            color: white;
            padding: 20px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .navbar h1 {
            font-size: 30px;
            font-weight: 700;
        }

        .navbar ul {
            list-style: none;
            display: flex;
            margin: 0;
        }

        .navbar li {
            margin-left: 30px;
        }

        .navbar a {
            text-decoration: none;
            color: white;
            font-size: 18px;
            transition: color 0.3s ease;
        }

        .navbar a:hover {
            color: #ff6b6b;
        }

        /* Hero Section */
        .hero {
            position: relative;
            height: 100vh;
            background: url('https://images.moneycontrol.com/static-mcnews/2022/09/Health-insurance-770x433.png') no-repeat center center/cover;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            text-align: center;
        }

        .hero h1 {
            font-size: 64px;
            margin: 0;
            text-transform: uppercase;
            letter-spacing: 2px;
            font-weight: 700;
        }

        .hero p {
            font-size: 24px;
            margin: 20px 0;
        }

        .hero a {
            padding: 15px 30px;
            background-color: #ff6b6b;
            color: white;
            text-decoration: none;
            border-radius: 50px;
            font-size: 18px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .hero a:hover {
            background-color: #e74c3c;
            transform: translateY(-5px);
        }

        /* About Section */
        .about {
            padding: 100px 0;
            text-align: center;
            background-color: #fff;
        }

        .about h2 {
            font-size: 36px;
            color: #1abc9c;
            margin-bottom: 20px;
        }

        .about p {
            max-width: 800px;
            margin: 0 auto;
            font-size: 18px;
            color: #666;
        }

        /* Services Section */
        .services {
            padding: 100px 0;
            background-color: #f4f7fc;
            text-align: center;
        }

        .services h2 {
            font-size: 36px;
            color: #1abc9c;
            margin-bottom: 50px;
        }

        .services-container {
            display: flex;
            justify-content: space-around;
            max-width: 1170px;
            margin: 0 auto;
            flex-wrap: wrap;
        }

        .service-box {
            background-color: white;
            padding: 30px;
            width: 30%;
            margin: 15px 0;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .service-box:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
        }

        .service-box h3 {
            font-size: 24px;
            margin-bottom: 15px;
            color: #34495e;
        }

        .service-box p {
            color: #fff;
        }

        /* Newsletter Section */
        .newsletter {
            background-color: #1abc9c;
            padding: 80px 0;
            color: white;
            text-align: center;
        }

        .newsletter h2 {
            font-size: 28px;
            margin-bottom: 20px;
        }

        .newsletter input[type="email"] {
            padding: 15px;
            border: none;
            border-radius: 50px;
            width: 300px;
            margin-right: 10px;
            font-size: 16px;
        }

        .newsletter input[type="submit"] {
            padding: 15px 30px;
            background-color: #ff6b6b;
            color: white;
            border: none;
            border-radius: 50px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .newsletter input[type="submit"]:hover {
            background-color: #e74c3c;
            transform: translateY(-5px);
        }

        /* Testimonials */
        .testimonials {
            background-color: #fff;
            padding: 100px 0;
            text-align: center;
        }

        .testimonials h2 {
            font-size: 36px;
            color: #1abc9c;
            margin-bottom: 50px;
        }

        .testimonial-box {
            max-width: 600px;
            margin: 0 auto;
            background-color: #f9f9f9;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }

        .testimonial-box p {
            color: #666;
            font-size: 18px;
            margin: 0;
        }

        /* Contact Section */
        .contact {
            padding: 100px 0;
            background-color: #f4f7fc;
        }

        .contact h2 {
            font-size: 36px;
            color: #1abc9c;
            text-align: center;
            margin-bottom: 50px;
        }

        .contact-container {
            display: flex;
            justify-content: space-around;
            max-width: 1170px;
            margin: 0 auto;
            flex-wrap: wrap;
        }

        .contact-box {
            background-color: white;
            padding: 30px;
            width: 30%;
            margin: 15px 0;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }

        .contact-box h3 {
            font-size: 24px;
            margin-bottom: 15px;
            color: #34495e;
        }

        .contact-box p {
            color: #666;
            font-size: 18px;
        }

        /* Footer */
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

    <!-- Navbar -->
    <div class="navbar">
        <h1>Online Medicine Ordering</h1>
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Contact Us</a></li>
            <li><a href="paymentinsert.jsp">Insert Payment</a></li>
        </ul>
    </div>

    <!-- Hero Section -->
    <section class="hero">
        <div>
            <h1>Order Medicines Online</h1>
            <p>Fast and Reliable Medicine Delivery at Your Doorstep</p>
            <a href="#">Get Started</a>
        </div>
    </section>

    <!-- About Section -->
    <section class="about">
        <h2>About Us</h2>
        <p>We are dedicated to making healthcare more accessible by providing an easy-to-use platform where you can order your medications and health products online with ease.</p>
    </section>

    <!-- Services Section -->
    <section class="services">
        <h2>Our Services</h2>
        <div class="services-container">
            <div class="service-box">
                <h3>Medicine Delivery</h3>
                <p>Quick and safe delivery of your prescription medicines directly to your home.</p>
            </div>
            <div class="service-box">
                <h3>Online Consultation</h3>
                <p>Get expert advice and consultation from healthcare professionals online.</p>
            </div>
            <div class="service-box">
                <h3>Health Products</h3>
                <p>Shop a wide variety of health products, including supplements, vitamins, and more.</p>
            </div>
        </div>
    </section>

    <!-- Testimonials Section -->
    <section class="testimonials">
        <h2>What Our Customers Say</h2>
        <div class="testimonial-box">
            <p>"Fantastic service! The delivery was quick, and the online consultation was very helpful. Highly recommend!"</p>
        </div>
    </section>

    <!-- Newsletter Section -->
    <section class="newsletter">
        <h2>Subscribe to Our Newsletter</h2>
        <form>
            <input type="email" placeholder="Enter your email">
            <input type="submit" value="Subscribe">
        </form>
    </section>

    <!-- Contact Us Section -->
    <section class="contact">
        <h2>Contact Us</h2>
        <div class="contact-container">
            <div class="contact-box">
                <h3>Email</h3>
                <p>support@onlinemedicine.com</p>
            </div>
            <div class="contact-box">
                <h3>Phone</h3>
                <p>+94 123 456 789</p>
            </div>
            <div class="contact-box">
                <h3>Location</h3>
                <p>123 Main Street, Colombo, Sri Lanka</p>
            </div>
        </div>
    </section>

    <!-- Footer -->
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