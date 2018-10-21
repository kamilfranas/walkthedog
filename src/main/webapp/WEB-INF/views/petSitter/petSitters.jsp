<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pet Sitters</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
	integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
	crossorigin="anonymous">
</head>
<body>
	<h1>Pet Sitters</h1>
	<table class="table table-striped table-dark">
		<thead class="thead-dark">
			<tr>
				<th scope="col">Name</th>
				<th scope="col">Second Name</th>
				<th scope="col">Email</th>
				<th scope="col">Phone Number</th>
				<th scope="col">City</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="petsitter">
				<tr>
					<td>${petsitter.name}</td>
					<td>${petsitter.secondName}</td>
					<td>${petsitter.email}</td>
					<td>${petsitter.phoneNumber}</td>
					<td>${petsitter.city}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>