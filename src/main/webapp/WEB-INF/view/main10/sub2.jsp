<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>${car1.model}</p>
<p>${car1.company}</p>
<p>${car1.price}</p>
<hr>

<p>${car2.model}</p>
<p>${car2.company}</p>
<p>${car2.price}</p>
<hr>

<p>${car1.getModel()}</p>
<p>${car1.getCompany()}</p>
<p>${car1.getPrice()}</p>
<hr>

<p>${car2.getModel()}</p>
<p>${car2.getCompany()}</p>
<p>${car2.getPrice()}</p>
</body>
</html>