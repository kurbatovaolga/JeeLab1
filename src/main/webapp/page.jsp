<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Employees</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <td>Personnel Number</td>
        <td>Full Name</td>
        <td>Age</td>
        <td>Department</td>
    </tr>
    </thead>
    <tbody>
        <c:forEach items="${employeesList}" var="employee">
        <tr>
            <td>${employee.personnelNumber}</td>
            <td>${employee.fullName}</td>
            <td>${employee.age}</td>
            <td>${employee.department.name}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
