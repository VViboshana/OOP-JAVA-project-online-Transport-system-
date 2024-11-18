<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Online Transport System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #e9ecef; /* Light gray background */
        }
        .navbar {
            background-color: #007bff; /* Bootstrap primary color */
        }
        .navbar-brand img {
            height: 40px; /* Adjust logo size */
        }
        .hero {
            background: url('images/BackgroundImage.jpg') no-repeat center center/cover;
            color: #616161;
            text-align: center;
            padding: 100px 20px;
        }
        .hero h1 {
            font-size: 3.5rem;
            margin-bottom: 20px;
        }
        .feature {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        footer {
            background-color: #343a40;
            color: white;
            text-align: center;
            padding: 20px 0;
        }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="images/WhatsApp Image 2024-10-13 at 17.53.05_0e9943f0.jpg" alt="Logo"> DropME
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <div class="hero">
        <h1>Welcome to DropME Online Transport Service</h1>
        <p>Your reliable partner for safe and efficient transport services.</p>
        <a href="AdminRegister.jsp" class="btn btn-light btn-lg">Get Started</a>
    </div>

    <!-- Features Section -->
    <div class="container my-5">
        <h2 class="text-center mb-4">Our Features</h2>
        <div class="row">
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="feature text-center p-4">
                    <h3>Fast Booking</h3>
                    <p>Book your ride in just a few clicks and enjoy fast and reliable service.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="feature text-center p-4">
                    <h3>Real-Time Tracking</h3>
                    <p>Track your vehicle in real-time and never worry about delays again.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="feature text-center p-4">
                    <h3>24/7 Support</h3>
                    <p>Our support team is available 24/7 to assist you with any inquiries.</p>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Footer -->
<footer class="bg-dark text-white mt-5">
    <div class="container py-4">
        <div class="row">
            <div class="col-md-4 mb-3">
                <h5>About Us</h5>
                <p>DropME is your reliable partner for safe and efficient transport services. We aim to provide the best transport experience to our customers.</p>
            </div>
            <div class="col-md-4 mb-3">
                <h5>Quick Links</h5>
                <ul class="list-unstyled">
                    <li><a href="#" class="text-white">Home</a></li>
                    <li><a href="#" class="text-white">Services</a></li>
                    <li><a href="#" class="text-white">About Us</a></li>
                    <li><a href="#" class="text-white">Contact</a></li>
                    <li><a href="login.jsp" class="text-white">Login</a></li>
                </ul>
            </div>
            <div class="col-md-4 mb-3">
                <h5>Contact Us</h5>
                <p>Email: support@dropme.com</p>
                <p>Phone: +123 456 7890</p>
                <div>
                    <a href="#" class="text-white me-2"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="text-white me-2"><i class="fab fa-twitter"></i></a>
                    <a href="#" class="text-white"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
        <hr class="bg-light">
        <div class="text-center">
            <p>&copy; 2024 DropME Online Transport System. All rights reserved.</p>
        </div>
    </div>
</footer>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</html>