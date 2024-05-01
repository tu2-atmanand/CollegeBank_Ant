<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Sign In</title>
  <style>
    body {
      background-image: url("/SignUpImage.png");
      background-size: cover;
      background-position: center;
      font-family: Arial, sans-serif;
    }

    .login-form {
      margin: 0 auto;
      width: 50%;
      padding: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
      background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white */
    }

    h2 {
      text-align: center;
      margin-bottom: 20px;
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
  </style>
</head>
<body>
  <h2>Sign In</h2>
  <form action="Signin" method="post" class="login-form">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required><br><br>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required><br><br>
    <input type="submit" value="Sign In">
  </form>
  <p>If you are not registered, <a href="/CollegeBank/signup.htm">click here to sign up</a>.</p>
</body
