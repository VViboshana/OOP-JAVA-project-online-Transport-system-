<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            background-color: #f4f7fa; /* Light background for the entire page */
        }
        .dashboard-title {
            margin: 20px 0;
            color: #007bff; /* Bootstrap primary color */
            text-align: center;
        }
        .card {
            margin: 15px 0; /* Space between cards */
            border: none; /* No border for cards */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Soft shadow */
        }
        .card-header {
            background-color: #007bff; /* Blue background for headers */
            color: white; /* White text for headers */
            font-weight: bold; /* Bold text */
        }
        .card-body {
            background-color: #ffffff; /* White background for card body */
        }
        .btn-custom {
            background-color: #28a745; /* Custom button color */
            color: white;
        }
        .btn-custom:hover {
            background-color: #218838; /* Darker green on hover */
        }
    </style>
</head>
<body>

<div class="container mt-4">
    <h1 class="dashboard-title">Admin Dashboard</h1>

    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <div class="card-header">
                    Total Users
                </div>
                <div class="card-body">
                    <h2 class="text-center">150</h2>
                    <p class="text-center"><a href="viewUsers.jsp" class="btn btn-custom">View Users</a></p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-header">
                    Pending Responses
                </div>
                <div class="card-body">
                    <h2 class="text-center">32</h2>
                    <p class="text-center"><a href="viewResponses.jsp" class="btn btn-custom">View Responses</a></p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-header">
                    Feedback Received
                </div>
                <div class="card-body">
                    <h2 class="text-center">78</h2>
                    <p class="text-center"><a href="viewFeedback.jsp" class="btn btn-custom">View Feedback</a></p>
                </div>
            </div>
        </div>
    </div>

    <div class="mt-4">
        <h2 class="text-center">Quick Actions</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        Add User
                    </div>
                    <div class="card-body">
                        <p class="text-center"><a href="addUser.jsp" class="btn btn-custom">Add New User</a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        Manage Inquiry
                    </div>
                    <div class="card-body">
                        <p class="text-center"><a href="SendRespons.jsp" class="btn btn-custom">Manage Inquiry</a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        View Reports
                    </div>
                    <div class="card-body">
                        <p class="text-center"><a href="viewReports.jsp" class="btn btn-custom">View Reports</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html> 