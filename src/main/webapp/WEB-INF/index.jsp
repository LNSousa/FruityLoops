<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
	<h1 class="text-info text-center">Fruit Store</h1>
	<table class="table border border-info border-5 mx-auto" style="width:50%">
		<thead>
			<tr>
				<th scope="col">Fruit</th>
				<th scope="col">Price</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="fruit" items="${ fruits }">
				<tr>
					<c:choose> 
						<c:when test="${ fruit.name.startsWith('G') }">
							<td style="color:pink"><c:out value="${ fruit.name }"></c:out></td>
						</c:when>
						<c:otherwise> 
							<td><c:out value="${ fruit.name }"></c:out></td>
						</c:otherwise>
					</c:choose>
					<td>$<c:out value="${ fruit.price }"></c:out></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>