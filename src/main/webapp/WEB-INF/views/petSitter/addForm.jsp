<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Add Pet Sitter</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
	integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
	crossorigin="anonymous">
</head>
<body>
	<div class="jumbotron">
		<h1 class="display-4">Add a new pet sitter</h1>
		<hr class="my-4">

		<form:form action="/walkthedog/petsitter/add" method="post"
			modelAttribute="PetSitter">

			<label>Name</label>
			<form:input path="name" />
			<font color="red"><form:errors path="name" cssclass="error"></form:errors>
			</font>
			<br />

			<label>Second Name</label>
			<form:input path="secondName" />
			<font color="red"><form:errors path="secondName"
					cssclass="error"></form:errors> </font>
			<br />

			<label>Email</label>
			<form:input path="email" />
			<font color="red"><form:errors path="email" cssclass="error"></form:errors>
			</font>
			<br />

			<label>Phone Number</label>
			<form:input path="phoneNumber" />
			<font color="red"><form:errors path="phoneNumber"
					cssclass="error"></form:errors> </font>
			<br />

			<label>City</label>
			<form:input path="city" />
			<font color="red"><form:errors path="city" cssclass="error"></form:errors>
			</font>
			<br />

			<label>Description</label>
			<form:input path="description" />
			<font color="red"><form:errors path="description"
					cssclass="error"></form:errors> </font>
			<br />

			<input type="submit" value="Add" name="addPetSitter"
				class="btn btn-success">
		</form:form>
		<form:form action="/walkthedog/petsitter/" method="post">
				<input type="submit" class="btn btn-primary" name="goBack"
					value="Go back" />
			</form:form>
	</div>

</body>
</html>
