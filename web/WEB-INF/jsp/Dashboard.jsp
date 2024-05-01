<%-- 
    Document   : Dashboard
    Created on : 29-Apr-2024, 11:44:40 PM
    Author     : ATMANAND
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Dashboard</title>
        <style>
            body {
                display: flex;
                flex-wrap: wrap;
                margin: 0;
                padding: 20px;
                justify-content: center;
            }

            .dashboard-div {
                width: 50%;
                padding: 20px;
                margin-bottom: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
                background-color: #fff;
            }

            .welcome-div {
                background-image: url("path/to/welcome-image.jpg");
                background-size: cover;
                background-position: center;
                color: #fff;
                text-align: center;
                padding: 50px;
            }

            .welcome-message {
                font-size: 24px;
                margin-bottom: 10px;
                color: black;
            }

            .balance-div, .bills-div, .notifications-div {
                padding: 20px;
            }

            .balance-div h2, .bills-div h2, .notifications-div h2 {
                margin-bottom: 10px;
            }
        </style>
    </head>
    <body>
        <div class="dashboard-div welcome-div">
            <h1 class="welcome-message">Welcome, ${sessionScope.loggedInUser}</h1>
        </div>

        <div class="dashboard-div balance-div">
            <h2>Bank Balance</h2>
            <p>Balance: ₹10,000</p>
        </div>

        <div class="dashboard-div bills-div">
            <h2>Pending Bills</h2>
            <p>No pending bills.</p>
        </div>

        <div class="dashboard-div notifications-div">
            <h2>Notifications</h2>
            <p>No notifications.</p>
        </div>
        <button class="logout-button" onclick="logout()">Logout</button>

        <script>
            function logout() {
                window.location.href = "/CollegeBank/Logout"; // Redirect to Logout servlet
            }
        </script>
    </body>
</html>

