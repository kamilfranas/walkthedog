<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Choosen Animal</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
	integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
	crossorigin="anonymous" >
</head>
<body>
<div class="card">
  <div class="card-header">
    This is ${animal.name}
  </div>
  <div class="card-body">
    <h5 class="card-title">About ${animal.name}</h5>
    <p class="card-text">${animal.description}</p>
    <form:form action="/walkthedog/animals/animalinfo" method="post">
    	<input type="submit" class="btn btn-primary" name = "goback" value="Go back" />
    </form:form>
  </div>
</div>

</body>
</html>