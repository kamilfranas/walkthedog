<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Animals</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
	integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
	crossorigin="anonymous">
</head>
<body>


	<h1>Animals List:</h1>

	<table class="table table-striped table-dark">
		<thead class="thead-dark">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Name</th>
				<th scope="col">Description</th>
				<th scope="col">Actions</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach items="${animalList}" var="animal">
				<tr>
					<th>${animal.id}</th>
					<td>${animal.name}</td>
					<td>${animal.description}</td>
					<td><form:form
							action="/walkthedog/animals/id=${animal.id}" method="post">
							<input type="submit" class="btn btn-info" name="animalInfo"
								value="See more" />
							<input type="submit" class="btn btn-warning" name="animalEditGet"
								value="Edit" />
							<input type="submit" class="btn btn-danger" name="animalRemove"
								value="Remove" />
						</form:form></td>
				</tr>
			</c:forEach>


		</tbody>
	</table>
	
	<form:form action="/walkthedog/" method="post">
  	<input type="submit" class="btn btn-secondary" name = "mainPage" value="Welcome Page">
  	</form:form>
  	
  	<form:form action="/walkthedog/animals/add" method="post">
  	<input type="submit" class="btn btn-warning" name= "addNewAnimal" value = "Add a new animal"/>
</form:form>


</body>
</html>