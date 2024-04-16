<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student's List</title>
</head>
<body>
	<h2>Student's List</h2>
	<form action="/students" method="get">
		<input type="search" name="search" />
		<button type="submit">Search</button>
	</form>

	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Age</th>
				<th>Gender</th>
				<th>Grade</th>
				<th>Date of Birth</th>
				<th>Hobby</th>
				<th>Phone Number</th>
				<th>Blood Group</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${students}" var="student">
				<tr>
					<td>${employee.studentId}</td>
					<td>${employee.studentName}</td>
					<td>${employee.studentAge}</td>
					<td>${employee.studentGender}</td>
					<td>${employee.studentGrade}</td>
					<td>${employee.studentDOB}</td>
					<td>${employee.studentHobby}</td>
					<td>${employee.stundentPhone}</td>
					<td>${employee.studentBloodgroup}</td>
					<td><a href="/editStudent/${student.studentId}">Update</a></td>
					<td><a href="/deleteStudent/${student.studentId}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="/createStudent" class="create-button">Create Student Detail</a>
</body>
</html>