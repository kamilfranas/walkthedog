<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	<div class="jumbotron">
		<h1 class="display-4">Edit</h1>
		<hr class="my-4">


		<form:form action="/walkthedog/animals/id=${Animal.id}" method="post"
			modelAttribute="Animal">
			<div class="form-group">
				<form:label for="editname" path="name">Name</form:label>
				<font color="red"><form:errors path="name" cssclass="error"></form:errors></font>
				<form:input type="text" class="form-control" id="editname"
					path="name" placeholder="${Animal.name}" />
			</div>
			<div class="form-group">
				<form:label for="formGroupExampleInput2" path="description">About me</form:label>
				<form:input type="text" class="form-control"
					id="formGroupExampleInput2" placeholder="${Animal.description}"
					path="description" />
				<font color="red"><form:errors path="description"
						cssclass="error"></form:errors></font>
			</div>


			<input type="submit" class="btn btn-danger" name="cancel"
				value="Cancel" />
			<input type="submit" class="btn btn-success" name="confirm"
				value="Confirm" />

		</form:form>



	</div>
</body>
</html>