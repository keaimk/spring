<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>특정 가격으로 상품명 조회</h3>
<form>
    가격
    <input type="number" step="0.01" name="price" value="${param.price}">
    <br>
    <button>조회</button>
</form>
<hr>
<c:if test="${not empty nameList}">
    <ul>
        <c:forEach items="${nameList}" var="name">
            <li>${name}</li>
        </c:forEach>
    </ul>
</c:if>
<c:if test="${empty nameList}">
    <strong>해당 가격의 상품이 없습니다.</strong>
</c:if>
</body>
</html>