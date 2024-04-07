<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Display Flights</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        h2 {
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
            color: #333;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        a {
            text-decoration: none;
            color: #0066cc;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<h2>Flight Search Results</h2>
<h2>List of Flights</h2>
<table border="1">
    <tr>
        <th>Airlines</th>
        <th>Departure City</th>
        <th>Arrival City</th>
        <th>Departure Time</th>
        <th>Select Flight</th>
    </tr>
    <c:forEach items="${findFlights}" var="findFlight">
        <tr>
            <td>${findFlight.operatingAirlines}</td>
            <td>${findFlight.departureCity}</td>
            <td>${findFlight.arrivalCity}</td>
            <td>${findFlight.estimatedDepartureTime}</td>
            <td><a href="showCompleteReservation?flightId=${findFlight.id}">Select</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
