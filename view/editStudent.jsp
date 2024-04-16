<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Student</title>
</head>
<body>
	<h2>Edit Student</h2>
	<form action="/updateStudent/${student.studentId}" method="post">
		<input type="hidden" name="_method" value="PUT"> Name: <input
			type="text" name="name" value="${student.studentName}"><br>
		Age: <input type="number" name="age" value="${student.studentAge}"><br>
		Grade: <input type="text" name="grade" value="${student.studentGrade}"><br>
		Gender: <input type="radio" name="gender" value="Male"
			${student.studentGender == 'Male' ? 'checked' : ''}> Male <input
			type="radio" name="gender" value="Female"
			${student.studentGender == 'Female' ? 'checked' : ''}> Female<br>
		Date of Birth: <input type="date" name="dob" value="${student.studentDOB}"><br>
		Hobby: <input type="text" name="hobby" value="${student.studentHobby}"><br>
		Phone Number: <input type="text" name="phoneNumber"
			value="${student.studentPhone}"><br> Blood Group: <input
			type="text" name="bloodGroup" value="${student.studentBloodGroup}"><br>
		<input type="submit" value="Update">
	</form>
</body>
</html>