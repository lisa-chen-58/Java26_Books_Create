<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="java.util.Date" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
    <%@ page isErrorPage="true"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Book</title>
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<script type="text/javascript" src="js/app.js"></script>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<h2>Create a New Book</h2>
	<form action='/books' method = 'post'>
		<div>
			<input type="hidden" name="id">
		</div>
		<div>
			<label>Title:</label>
			<input type="text" name="title">
		</div>
		<div>
			<label>Description:</label>
			<input type="text" name="description">
		</div>
		<div>
			<label>Language:</label>
			<input type="text" name="language">
		</div>
		<div>
			<label>Page Count:</label>
			<input type="number" name="pages">
			
		</div>
		<input type="submit">
	</form>
	<hr>
	<h5><a href="/books">Go Home</a></h5>

</body>
</html>