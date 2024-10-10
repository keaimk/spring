<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>주문 조회</h3>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>고객id</th>
        <th>직원id</th>
        <th>주문일</th>
        <th>배송id</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${orderList}" var="order">
        <tr>
            <td>${order.id}</td>
            <td>${order.customerID}</td>
            <td>${order.employeeID}</td>
            <td>${order.orderDate}</td>
            <td>${order.shipperID}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div style="margin: 10px;">
    <c:forEach begin="1" end="20" var="pageNumber">
    <c:url value="/main27/sub6" var="pageLink">
        <c:param name="page" value="${pageNumber}"/>
    </c:url>
    <a href="${pageLink}">${pageNumber}</a>
    </c:forEach>
</body>
</html>
