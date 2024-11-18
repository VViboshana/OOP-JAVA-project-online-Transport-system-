<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update User Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 50%;
            margin: 50px auto;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
            margin-top: 20px;
        }

        td {
            padding: 10px;
            color: #555;
        }

        input[type="text"],
        input[type="date"] {
            width: calc(100% - 20px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus,
        input[type="date"]:focus {
            border-color: #007bff;
            outline: none;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 15px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .required::after {
            content: " *";
            color: red;
        }
    </style>
</head>
<body>
<%
		String userId = request.getParameter("userId");
		String username = request.getParameter("username");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String responsedDate = request.getParameter("responsedDate");
		String adminResponse = request.getParameter("adminResponse");
	%>
    <div class="container">
        <h1>Update Inquiry Information</h1>
        <form action="UpdateServlet" method="post">
            <table>
                <tr>
                    <td>User Id:</td>
                    <td><input type="text" name="userId" value="<%=userId%>" readonly></td>
                </tr>
                <tr>
                    <td>User Name:</td>
                    <td><input type="text" name="username" value="<%=username%>" class="required" required></td>
                </tr>
                <tr>
                    <td>First Name:</td>
                    <td><input type="text" name="firstName" value="<%=firstName%>" class="required" required></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td><input type="text" name="lastName" value="<%=lastName%>" class="required" required></td>
                </tr>
                <tr>
                    <td>Response Date:</td>
                    <td><input type="date" name="responsedDate" value="<%=responsedDate%>" class="required" required></td>
                </tr>
                <tr>
                    <td>Admin's Response:</td>
                    <td><input type="text" name="adminResponse" value="<%=adminResponse%>" class="required" required></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Update"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>