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
	<div class="jumbotron">
		<h1 class="display-4">Edit</h1>
		<hr class="my-4">

		<form:form action="/walkthedog/petsitter/id=${petSitter.id}"
			method="post" modelAttribute="PetSitter">
			<label>Name</label>
			<form:input path="name" placeholder="${petSitter.name}" />
			<font color="red"><form:errors path="name" cssclass="error"></form:errors>
			</font>
			<br />

			<label>Second Name</label>
			<form:input path="secondName" placeholder="${petSitter.secondName}" />
			<font color="red"><form:errors path="secondName"
					cssclass="error"></form:errors> </font>
			<br />

			<label>Email</label>
			<form:input path="email" placeholder="${petSitter.email}" />
			<font color="red"><form:errors path="email" cssclass="error"></form:errors>
			</font>
			<br />

			<label>Phone Number</label>
			<form:input path="phoneNumber" placeholder="${petSitter.phoneNumber}" />
			<font color="red"><form:errors path="phoneNumber"
					cssclass="error"></form:errors> </font>
			<br />

			<label>City</label>
			<form:input path="city" placeholder="${petSitter.city}" />
			<font color="red"><form:errors path="city" cssclass="error"></form:errors>
			</font>
			<br />

			<label>Description</label>
			<form:input path="description" placeholder="${petSitter.description}" />
			<font color="red"><form:errors path="description"
					cssclass="error"></form:errors> </font>
			<br />

			<input type="submit" value="Edit" name="editPetSitterPost"
				class="btn btn-success">
		</form:form>
		
		<form:form action="/walkthedog/petsitter/" method="post">
				<input type="submit" class="btn btn-primary" name="goBack"
					value="Go back" />
			</form:form>
	</div>
</body>
</html>