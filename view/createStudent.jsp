<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Student</title>
</head>
<body>
<h2>Create Student</h2>
<form action="/createStudent" method="post">
Name:<input type="text" name ="studentName">
Age: <input type="number" name="studentAge">
Grade:<input type="text" name="studentGrade">
Gender:
<input type="radio" name="studentGender" value="Male"> Male
<input type="radio" name="studentGender" value="Female">Female<br><br>
Date of Birth: <input type="date" name="studentDOB"><br><br>
Hobby: <input type="text" name="studentHobby" placeholder="Other"><br><br>
<input type="checkbox" name="studentHobby" value="reading">Reading
<input type="checkbox" name="studentHobby" value="Gardening">Gardening
<input type="checkBox" name="studentHobby" value="sports"> Sports
<input type="checkbox" name="studentHobby" value="Dancing">Dancing
<input type="checkbox" name="studentHobby" value="Singing">Singing
<br><br>
Phone Number: <input type="text" name="studentPhone"><br><br>
Blood Group: <input type="text" name="studentBloodGroup"><br><br>
<input type="submit" value="Submit"> 

</form>
</body>
</html>