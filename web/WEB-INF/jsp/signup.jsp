<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Login</title>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
        <style>
            body {
                display: flex;
                flex-direction: row;
                align-items: center;
                justify-content: center;
                min-height: 100vh;
                background-color: #f5f5f5;
                padding: 20px;
            }

            .formBody {
                display: flex;
                flex-direction: column;
                align-items: center;
                min-width: 50%;
                justify-content: center;
                min-height: 100vh;
                background-color: #f5f5f5;
                padding: 20px;
            }

            .LeftImageBody {
                width: 50%;
                height: 100%;
            }

            h2 {
                text-align: center;
                margin-bottom: 20px;
            }

            form {
                width: 80%;
                margin: 0 auto;
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
                background-color: #fff;
            }

            label {
                display: block;
                margin-bottom: 5px;
            }

            input[type="text"], input[type="password"] {
                width: 95%;
                padding: 10px;
                margin-bottom: 10px;
                border: 1px solid #ccc;
                border-radius: 3px;
            }

            input[type="submit"] {
                width: 100%;
                padding: 10px;
                background-color: #4CAF50;
                color: #fff;
                border: none;
                border-radius: 3px;
                cursor: pointer;
            }

            p {
                text-align: center;
                margin-top: 10px;
            }

            a {
                color: #4CAF50;
                text-decoration: none;
            }

            .toast-top-center {
                top: 0;
                width: 50%;
                right: 0;
                margin: 0;
                border-left: none;
                padding: 15px 20px;
                font-size: 16px;
                text-align: left;
                background-color: #fff;
                box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
                animation: slide-in 2s ease-in-out forwards;
            }

            @keyframes slide-in {
                from {
                    transform: translateY(-100%);
                }
                to {
                    transform: translateY(0);
                }
            }

            .toast-success {
                background-color: #4CAF50;
                color: #fff;
            }

            .toast-error {
                background-color: #f44336;
                color: #fff;
            }
        </style>
    </head>
    <body>
        <div class="LeftImageBody">
            <<img src="https://www.letuspublish.com/wp-content/uploads/2017/09/Best-wallpaper-of-Ganesha.jpg" alt="alt"/>
        </div>
        <div class="formBody">
            <h2>Register New User</h2>
            <form action="Signup" method="post">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required><br><br>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required><br><br>
                <input type="submit" value="Submit">
            </form>
            <p>Go back to Sign In, <a href="/CollegeBank/signin.htm">Sign In</a>.</p>        
        </div>
        <script>
            var toastMessage = '${requestScope.toastMessage}';
            if (toastMessage) {
                toastr.options = {
                    closeButton: true,
                    timeOut: 2000,
                    positionClass: 'toast-top-center',
                    extendedTimeOut: 3000
                };
                toastr[toastMessage.startsWith('Error:') ? 'error' : 'success'](toastMessage);
            }
        </script>
    </body>
</html>
