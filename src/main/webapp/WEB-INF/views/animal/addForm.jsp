<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add a new Animal</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
	integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
	crossorigin="anonymous">
</head>
<body>
	<div class="jumbotron">
		<h1 class="display-4">Add a new pet</h1>
		<hr class="my-4">
		<form:form action="/walkthedog/animals/add" method="post"
			modelAttribute="Animal">
			<label>Name</label>
			<form:input path="name" placeholder="Enter the name" />
			<font color="red"><form:errors path="name" cssclass="error" /></font>
			<br />
			<label>Description</label>
			<form:input path="description"
				placeholder="Enter description of your pet" />
			<font color="red"><form:errors path="description"
					cssclass="error" /></font>
			<br />
			<input type="submit" value="Add a new pet" name="submitNewAnimal"
				class="btn btn-success" />
			<input type="submit" value="Go back" name="goBack"
				class="btn btn-danger" />
		</form:form>
	</div>
</body>
</html>