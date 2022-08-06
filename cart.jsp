<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shopping Cart</title>
</head>
<body>
	<h1>Item(s) in Cart</h1>
	<hr>
	<c:forEach items="${sessionScope.cart.items}" var="itemInCart">
		Name : ${itemInCart.product.name} - Price : ${itemInCart.product.price} - Quantity : ${itemInCart.product.quantity} ---<a
			href="CartServlet">Remove</a>
		<br>
	</c:forEach>

</body>
</html>