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
	<title>Books</title>
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<script type="text/javascript" src="js/app.js"></script>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="card container">
		<h1 class="card-header">Books Page</h1>
		<div class="card-body">
			<table class="table table-striped table-bordered">
		        <thead>
		        	<th>Title</th>
		        	<th>Description:</th>
		        	<th>Language</th>
		        	<th>Page Count</th>
		        </thead>
			    <c:forEach var="book" items="${allBooks}">

			        <tbody>
						<th><a href="/books/${book.id}"><c:out value="${book.title}"/></a></th>
						<td><c:out value="${book.description}"/></td>
						<td><c:out value="${book.language}"/></td>
						<td><c:out value="${book.numberOfPages}"/></td>
		        	</tbody>
			    </c:forEach>
			</table>
		</div>
	</div>
	
</body>
</html>