<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirmation</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .confirmation-container {
        text-align: center;
        background-color: #fff;
        border-radius: 10px;
        padding: 20px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    h1 {
        color: #333;
    }

    p {
        color: #666;
        font-size: 18px;
    }
</style>
</head>
<body>
    <div class="confirmation-container">
        <h1>Confirmation</h1>
        <p>Your ticket is booked. Your reservation ID is: ${reservationId}</p>
    </div>
</body>
</html>
