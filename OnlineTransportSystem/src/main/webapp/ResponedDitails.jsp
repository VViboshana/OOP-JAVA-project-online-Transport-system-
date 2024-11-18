<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Response Table</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            background-color: #f0f4f8; /* Light background for contrast */
        }
        .container {
            background-color: #ffffff; /* White background for the table */
            border-radius: 15px; /* Rounded corners */
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1); /* Soft shadow */
            padding: 20px; /* Padding for inner spacing */
        }
        h1 {
            color: #007bff; /* Blue color for the heading */
            text-align: center; /* Centered heading */
        }
        .form-control {
            margin-bottom: 20px; /* Space below search input */
        }
        .table {
            border-collapse: separate; /* Allows for border-radius */
            border-spacing: 0; /* Remove default spacing */
        }
        .table th, .table td {
            border: none; /* Remove default borders */
            padding: 15px; /* Padding inside cells */
        }
        .table th {
            background-color: #007bff; /* Blue background for headers */
            color: white; /* White text for headers */
        }
        .table-striped tbody tr:nth-of-type(odd) {
            background-color: #f8f9fa; /* Light gray for odd rows */
        }
        .btn-primary {
            background-color: #28a745; /* Green button */
            border-color: #28a745; /* Match border color */
        }
        .btn-primary:hover {
            background-color: #218838; /* Darker green on hover */
            border-color: #1e7e34; /* Darker border on hover */
        }
        .btn-danger {
            background-color: #dc3545; /* Red button */
            border-color: #dc3545; /* Match border color */
        }
        .btn-danger:hover {
            background-color: #c82333; /* Darker red on hover */
            border-color: #bd2130; /* Darker border on hover */
        }
    </style>
</head>
<body>
<div class="container mt-4">
    <h1 class="mb-4">View All Responses</h1>
    <input type="text" id="searchInput" class="form-control" placeholder="Search...">
    <table class="table table-striped table-bordered">
        <thead>
            <tr>
                <th>UserId</th>
                <th>User Name</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Response Date</th>
                <th>Response</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="responses" items="${allResponses}">
                <tr>
                    <td>${responses.userId}</td>
                    <td>${responses.username}</td>
                    <td>${responses.firstName}</td>
                    <td>${responses.lastName}</td>
                    <td>${responses.responsedDate}</td>
                    <td>${responses.adminResponse}</td>
                    <td>
                        <a href="updateRespons.jsp?userId=${responses.userId}&username=${responses.username}&firstName=${responses.firstName}&lastName=${responses.lastName}&responsedDate=${responses.responsedDate}&adminResponse=${responses.adminResponse}">
                            <button class="btn btn-primary">Update</button>
                        </a>
                    </td>
                    <td>
                        <form action="DeleteServlet" method="post">
                            <input type="hidden" name="userId" value="${responses.userId}"/>
                            <button class="btn btn-danger">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
<script>
    function filterTable() {
        var input, filter, table, tr, td, i, j, textvalue;
        input = document.getElementById("searchInput");
        filter = input.value.toUpperCase();
        table = document.querySelector("table");
        tr = table.getElementsByTagName("tr");

        for (i = 1; i < tr.length; i++) {
            tr[i].style.display = "none"; 
            td = tr[i].getElementsByTagName("td");
            for (j = 0; j < td.length; j++) {
                if (td[j]) {
                    textvalue = td[j].textContent || td[j].innerText;
                    if (textvalue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = ""; 
                        break; 
                    }
                }
            }
        }
    }
    document.getElementById("searchInput").addEventListener("input", filterTable);
</script>
</body>
</html>
