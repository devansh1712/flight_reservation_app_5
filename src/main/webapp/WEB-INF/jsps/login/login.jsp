<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }
    h2 {
        color: #333;
    }
    form {
        background-color: #fff;
        width: 300px;
        margin: 20px auto;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        width: 100%;
        background-color: #4caf50;
        color: white;
        padding: 10px 0;
        margin-top: 10px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
    .error-message {
        color: #ff0000;
        margin-top: 10px;
    }
</style>
</head>
<body>
<h2>Login Here</h2>
<div class="error-message">${error}</div>
<form action="verifyLogin" method="post">
    Email Id <input type="text" name="emailId"/>
    Password <input type="password" name="password"/>
    <input type="submit" value="login"/>
</form>
</body>
</html>
