<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee List</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 20px;
}

h2 {
	margin-bottom: 20px;
}

form {
	margin-bottom: 20px;
}

#pageSizeSelect {
	margin-right: 10px;
	padding: 5px;
	border-radius: 5px;
	border: 1px solid #ddd;
	background-color: #f9f9f9;
	color: #555;
}

input[type="search"] {
	border: 2px solid #4CAF50;
	border-radius: 5px;
	padding: 5px;
}

input[type="search"]:focus {
	outline: none;
	border-color: #45a049;
}

button[type="submit"] {
	padding: 8px 20px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

button[type="submit"]:hover {
	background-color: #45a049;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}

.pagination {
	margin-top: 20px;
	float: right;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
	margin: 0 4px;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
}

.create-container {
	margin-top: 20px;
}

.create-button {
	display: inline-block;
	padding: 10px 20px;
	background-color: #008CBA; /* Updated color */
	color: white;
	text-decoration: none;
	border-radius: 5px;
}

.create-button:hover {
	background-color: #005f6b; /* Darker shade for hover */
}

/* New CSS for page size select */
.page-size-container {
	float: right;
	margin-top: -45px;
	margin-right: 20px;
}

.page-size-container select {
	padding: 5px;
	border-radius: 5px;
	border: 1px solid #ddd;
	background-color: #f9f9f9;
	color: #555;
}

/* CSS for delete button */
.delete-button {
	background-color: #ff9999; /* Light red */
	color: #800000; /* Dark red */
	border: none;
	border-radius: 5px;
	padding: 5px 10px;
	cursor: pointer;
}

.delete-button:hover {
	background-color: #ffcccc; /* Lighter shade of red */
}

/* CSS for update button */
.update-button {
	background-color: #99ccff; /* Light blue */
	color: #004080; /* Dark blue */
	border: none;
	border-radius: 5px;
	padding: 5px 10px;
	cursor: pointer;
}

.update-button:hover {
	background-color: #cceeff; /* Lighter shade of blue */
}
</style>
</head>
<body>
	<h2>Employee's List</h2>
	<form action="/employees" method="get">
		<input type="search" name="search" />
		<button type="submit">Search</button>
	</form>
	<div class="page-size-container">
		<form action="/employees" method="get">
			<span>Page Size:</span> <select id="pageSizeSelect"
				onChange="updatePageSize()" name="pageSize">
				<option value="5">5</option>
				<option value="10">10</option>
				<option value="20">20</option>
				<option value="50">50</option>
				<option value="100">100</option>
			</select>
		</form>
	</div>
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
			<c:forEach items="${employees}" var="employee">
				<tr>
					<td>${employee.id}</td>
					<td>${employee.name}</td>
					<td>${employee.age}</td>
					<td>${employee.gender}</td>
					<td>${employee.grade}</td>
					<td>${employee.dob}</td>
					<td>${employee.hobby}</td>
					<td>${employee.phoneNumber}</td>
					<td>${employee.bloodGroup}</td>
					<td><a href="/editEmployee/${employee.id}"
						class="update-button">Update</a></td>
					<td><a href="/deleteEmployee/${employee.id}"
						class="delete-button">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="pagination">
		<a href="#" onclick="navigateToPage(event, 1)">&laquo;</a> <a href="#"
			onclick="navigateToPage(event, 1)">1</a> <a href="#"
			onclick="navigateToPage(event, 2)">2</a> <a href="#"
			onclick="navigateToPage(event, 3)">3</a> <a href="#"
			onclick="navigateToPage(event, currentPage + 1)">&raquo;</a>
	</div>
	<div class="create-container">
		<a href="/createEmployee" class="create-button">Add Employee
			</a>
	</div>

	<script>
		var currentPage = 1;

		function updatePageSize() {
			var pageSize = document.getElementById("pageSizeSelect").value;
			var url = "/employees?pageSize=" + pageSize + "&page="
					+ currentPage;
			window.location.href = url;
		}

		function navigateToPage(event, pageNumber) {
			event.preventDefault();
			currentPage = pageNumber;
			var pageSize = document.getElementById("pageSizeSelect").value;
			var url = "/employees?pageSize=" + pageSize + "&page=" + pageNumber;
			window.location.href = url;
		}
	</script>
</body>
</html>
