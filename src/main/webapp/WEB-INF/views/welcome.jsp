<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WalkTheDog</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
	integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
	crossorigin="anonymous" >
</head>
<body>
	<div class="container-fluid">
		<div class="jumbotron">
			<h1 class="display-4">${greeting}</h1>
			<p class="lead">${description}</p>
			<hr class="my-4">
<form:form action="/walkthedog/" method="post">
<input type="submit" class="btn btn-warning" name = "animalList" value="Animals" />
<input type="submit" class="btn btn-primary" name = "petSitterlList" value="Pet Sitters" />
</form:form>


		</div>


	</div>



</body>
</html>