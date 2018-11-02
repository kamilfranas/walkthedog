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
	<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<h1 class="display-4 font-weight-bold">Pet Sitters</h1>

			<form:form action="/walkthedog/" method="post">
				<input type="submit" class="btn btn-secondary float-left" name="mainPage"
					value="Welcome Page" >
			</form:form>

			<form:form action="/walkthedog/petsitter/add" method="post">
				<input type="submit" class="btn btn-warning float-right" name="addPetSitter"
					value="Add a new pet sitter" />
			</form:form>

		</div>
	</div>

	
	<table class="table table-striped table-dark">
		<thead class="thead-dark">
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
					
					<td><form:form action="/walkthedog/petsitter/id=${petSitter.id}"
							method="post">
							<input type="submit" class="btn btn-info" name="petSitterInfo"
								value="See more" />
							<input type="submit" class="btn btn-warning" name="editPetSitter"
								value="Edit" />
							<input type="submit" class="btn btn-danger" name="removePetSitter"
								value="Remove" />
						</form:form></td>

				
				

				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>