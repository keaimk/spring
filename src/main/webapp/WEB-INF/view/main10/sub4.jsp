<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
Controller10에 4번째 메소드

email, married, address, age 속성(property)가 있는
com.example.spring20240924.dto.c10.Person 클래스

--%>
<p>${person.email}</p> <%-- gmail --%>
<p>${person.married}</p> <%-- true --%>
<p>${person.address}</p> <%-- 신촌 --%>
<p>${person.age}</p> <%-- 44 --%>

</body>
</html>