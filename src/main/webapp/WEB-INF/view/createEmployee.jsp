<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Employee</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
}

h2 {
	color: #333;
}

form {
	width: 50%;
	margin: 0 auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

input[type="text"], input[type="number"], input[type="date"] {
	width: 100%;
	padding: 10px;
	margin: 5px 0;
	border: 1px solid #ccc;
	border-radius: 3px;
	box-sizing: border-box;
}

input[type="radio"] {
	margin-right: 5px;
}

input[type="submit"] {
	background-color: #4CAF50;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 3px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<h2>Fill Employee Information </h2>
	<form action="/createEmployee" method="post">
		Name: <input type="text" name="name"><br> Age: <input
			type="number" name="age"><br> Grade: <input type="text"
			name="grade"><br><br> Gender: <input type="radio"
			name="gender" value="Male"> Male <input type="radio"
			name="gender" value="Female"> Female<br><br><br> Date of Birth:
		<input type="date" name="dob"><br><br> Hobby: <input
			type="text" name="hobby" placeholder="Other"><br>
		<input type="checkbox" name="hobby" value="reading">Reading <input
			type="checkbox" name="hobby" value="Gardening">Gardening <input
			type="checkBox" name="hobby" value="sports"> Sports <input
			type="checkbox" name="hobby" value="Dancing">Dancing <input
			type="checkbox" name="hobby" value="Singing">Singing <br>
		<br> Phone Number: <input type="text" name="phoneNumber"><br>
		Blood Group: <input type="text" name="bloodGroup"><br> <input
			type="submit" value="Submit">
	</form>
</body>
</html>
