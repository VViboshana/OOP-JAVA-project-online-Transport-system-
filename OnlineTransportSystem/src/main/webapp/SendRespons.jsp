<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Response Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style>
        body {
            background-color: #e9ecef; /* Light gray background */
        }
        .container {
            background-color: #ffffff; /* White background for the form */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2); /* Soft shadow */
            padding: 30px; /* Padding for spacing */
        }
        h2 {
            color: #007bff; /* Bright blue for the heading */
            text-align: center; /* Center the heading */
        }
        .form-label {
            color: #495057; /* Darker gray for labels */
        }
        .btn-primary {
            background-color: #28a745; /* Green button */
            border-color: #28a745; /* Match border color */
        }
        .btn-primary:hover {
            background-color: #218838; /* Darker green on hover */
            border-color: #1e7e34; /* Darker border on hover */
        }
        .bg-gradient {
            background: linear-gradient(90deg, #007bff, #6610f2); /* Gradient background */
            color: white;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <h2 class="mb-4">Send Response for Inquiry</h2>
    <form action="AdminServlet" method="post">
        <div class="mb-3">
            <label for="username" class="form-label">User Name:</label>
            <input type="text" class="form-control" name="username" id="username" required>
        </div>
        
        <div class="mb-3">
            <label for="firstName" class="form-label">First Name:</label>
            <input type="text" class="form-control" name="firstName" id="firstName" required>
        </div>
        
        <div class="mb-3">
            <label for="lastName" class="form-label">Last Name:</label>
            <input type="text" class="form-control" name="lastName" id="lastName" required>
        </div>
        
        <div class="mb-3">
            <label for="responsedDate" class="form-label">Response Date:</label>
            <input type="date" class="form-control" name="responsedDate" id="responsedDate" required>
        </div>
        
        <div class="mb-3">
            <label for="adminResponse" class="form-label">Admin's Response:</label>
            <textarea class="form-control" name="adminResponse" id="adminResponse" rows="4" required></textarea>
        </div>
        
        <div class="mb-3 text-center">
            <button type="submit" class="btn btn-primary">Send</button>
            
        </div>
        
    </form>
</div>

</body>
</html>
