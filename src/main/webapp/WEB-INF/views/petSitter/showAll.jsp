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
	<h1>Pet Sitters:</h1>
	<table>
		<thead>
			<th scope="col">Name</th>
			<th scope="col">Second Name</th>
			<th scope="col">City</th>
			<th scope="col">Phone Number</th>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="petSitter">
				<tr> 
					<td>${petSitter.name}</td>
					<td>${petSitter.secondName}</td>
					<td>${petSitter.city}</td>
					<td>${petSitter.phoneNumber}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>