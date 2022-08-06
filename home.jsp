<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
</head>
<body>
<h1>STELAR</h1>
<h2>Buy parts for your new PC - Share your Built with the community</h2>
	<c:if test="${empty sessionScope.user}">
		<span><a href="logIn.jsp">Login</a></span>
	</c:if>

	<c:if test="${not empty sessionScope.user}">
	Hello, ${sessionScope.user.username};
	<span><a href="LogInServlet?action=logout">Logout</a></span>
	</c:if>
<hr>
<c:forEach var="category" items="${categoryList}" >
	<a href="HomeServlet?categoryId=${category.id}">${category.name}</a><br>
</c:forEach>
<hr>
Product List<br><hr>
<c:forEach var="product" items="${productList}" >
	<a href="ProductServlet?id=${product.id}">${product.name}</a> <br>
</c:forEach>


</body>
</html>