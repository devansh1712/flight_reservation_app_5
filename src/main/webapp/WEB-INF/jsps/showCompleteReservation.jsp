<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f5f5f5;
    }

    .container {
        max-width: 600px;
        margin: 50px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h2 {
        color: #333;
    }

    form {
        margin-top: 20px;
    }

    

    input[type="text"] {
        width: calc(100% - 20px);
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<div class="container">
    <h2>Flight Details</h2>
    <p>Flight Number: ${flight.flightNumber}</p>
    <p>Operating Airlines: ${flight.operatingAirlines}</p>
    <p>Departure City: ${flight.departureCity}</p>
    <p>Arrival City: ${flight.arrivalCity}</p>
    <p>Departure Date: ${flight.dateOfDeparture}</p>

    <h2>Enter Passenger Details</h2>
    <form action="confirmReservation" method="post">
        <label for="firstName">First Name</label>
        <input type="text" id="firstName" name="firstName" />
        
        <label for="middleName">Middle Name</label>
        <input type="text" id="middleName" name="middleName" />
        
        <label for="lastName">Last Name</label>
        <input type="text" id="lastName" name="lastName" />
        
        <label for="email">Email</label>
        <input type="text" id="email" name="email" />
        
        <label for="phone">Phone</label>
        <input type="text" id="phone" name="phone" />
        
        <input type="hidden" name="flightId" value="${flight.id}"/>
        
         <h2>Enter Payement Details</h2>
        Name On The Card Holder<input type ="text" name="nameOfTheCard"/>
        Card Number<input type ="text" name= "cardNumber"/>
        Cvv <input type ="text" name="Cvv"/>
        Expiry Date<input type ="text" name= "expiryDate"/>
        <input type="submit" value="Complete Reservation" />
    </form>
</div>
</body>
</html>
