<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login to the System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f0f8ff; /* Light background color */
            display: flex; /* Add this line to make the body a flex container */
            justify-content: center; /* Add this line to center the container vertically */
            align-items: center; /* Add this line to center the container vertically */
            height: 100vh; /* Add this line to set the height of the body to 100vh */
        }
        .container {
            background-color: #ffffff; /* White background for the form */
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin: 100px auto; /* Add this line to center the container horizontally */
            width: 50%; /* You can adjust the width as needed */
            text-align: center; /* Add this line to center the form elements horizontally */
        }
        h2 {
            color: #007bff; /* Bootstrap primary color */
            text-align: center;
            margin-bottom: 30px;
        }
        .btn-primary {
            background-color: #28a745; /* Green button color */
            border-color: #28a745;
        }
        .btn-primary:hover {
            background-color: #218838; /* Darker green on hover */
            border-color: #1e7e34;
        }
        .footer-text {
            text-align: center;
            margin-top: 20px;
            color: #6c757d; /* Muted text color */
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Login to the System</h2>
        <form action="LoginServlet" method="post">
            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" class="form-control" name="Aemail" id="email" required>
            </div>        
            <div class="mb-3">
                <label for="password" class="form-label">Password:</label>
                <input type="password" class="form-control" name="Apassword" id="password" required>
            </div>
            <button type="submit" class="btn btn-primary w-100">Login</button>
        </form>
        <div class="footer-text">
            <p>Don't have an account? <a href="AdminRegister.jsp">Register here</a></p>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>