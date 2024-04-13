<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>


<html>
<head>
<title>Login - KPI Reports</title>
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
.error-message {
	color: red;
	margin-bottom: 10px;
}
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
  }

  h2 {
    text-align: center;
    margin-top: 20px;
    color: #333;
  }

  form {
    background-color: #fff;
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
  }

  form input[type="text"],
  form input[type="password"] {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
  }

  input[type="submit"] {
    background-color: #007BFF;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }

  input[type="submit"]:hover {
    background-color: #0056b3;
  }

  a {
    display: block;
    text-align: center;
    margin-top: 20px;
    text-decoration: none;
    color: #007BFF;
  }
</style>
</head>
<body>
<div id="respuesta"></div>
    
	<h2>Welcome to the KPI report page</h2>

	<% if (request.getAttribute("error") != null) { %>
	<div class="error-message">
		<%= request.getAttribute("error") %>
	</div>
	<% } %>

	<form action="login" method="post">
		Username: <input type="text" name="username" required><br>
	Password: <input type="password" name="password" required><br>
		<input type="submit" value="Sign In">
	</form>
	<a href="register.jsp">Register</a>
</body>
</html>