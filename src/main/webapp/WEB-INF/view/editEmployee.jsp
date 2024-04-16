<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Employee</title>
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
    <h2>Edit Employee Details</h2>
    <form action="/updateEmployee/${employee.id}" method="post">
        <input type="hidden" name="_method" value="PUT">
        Name: <input type="text" name="name" value="${employee.name}"><br>
        Age: <input type="number" name="age" value="${employee.age}"><br>
        Grade: <input type="text" name="grade" value="${employee.grade}"><br><br>
        Gender: 
        <input type="radio" name="gender" value="Male" ${employee.gender == 'Male' ? 'checked' : ''}> Male
        <input type="radio" name="gender" value="Female" ${employee.gender == 'Female' ? 'checked' : ''}> Female<br><br>
        Date of Birth: <input type="date" name="dob" value="${employee.dob}"><br>
        Hobby: <input type="text" name="hobby" value="${employee.hobby}"><br>
        Phone Number: <input type="text" name="phoneNumber" value="${employee.phoneNumber}"><br>
        Blood Group: <input type="text" name="bloodGroup" value="${employee.bloodGroup}"><br><br>
        <input type="submit" value="Update">
    </form>
</body>
</html>
