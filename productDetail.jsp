<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    PRODUCT DETAILS
    <hr>
    NAME : ${product.name}
    <br> STOCK : ${product.stock}
    <br> PRICE : $ ${product.price}
    <br> DESCRIPTION : ${product.description}
    <br>
    <hr>
    <form action="CartServlet">
        <input hidden type="text" value="${product.id}" name="productId"> 
        <input hidden type="text" value="ADD_TO_CART" name="action"> 
        <input type="submit" value="Add To Cart">
    </form>
</body>
</html>