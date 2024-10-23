<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        #some-id1 {
            background-color: black;
            color: white;
        }

        .some-class1 {
            background-color: yellow;
            color: gray;
        }
    </style>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<%-- css review --%>
<div id="some-id1">
    Lorem ipsum dolor.
</div>

<%--div.some-class1*2>lorem3--%>
<div class="some-class1">Lorem ipsum dolor.</div>
<div class="some-class1">Modi, possimus, sunt?</div>

<%--table>thead>tr>th*5>lorem1--%>
<table class="table table-striped">
    <thead>
    <tr>
        <th>Lorem.</th>
        <th>Alias!</th>
        <th>Placeat.</th>
        <th>Ea.</th>
        <th>Accusantium!</th>
    </tr>
    </thead>
    <%--    tbody>tr*5>td*5>lorem1--%>
    <tbody>
    <tr>
        <td>Lorem.</td>
        <td>Quasi.</td>
        <td>Recusandae.</td>
        <td>Architecto.</td>
        <td>Cum.</td>
    </tr>
    <tr>
        <td>Lorem.</td>
        <td>Voluptatibus?</td>
        <td>Distinctio!</td>
        <td>Vel.</td>
        <td>Rerum!</td>
    </tr>
    <tr>
        <td>Lorem.</td>
        <td>Nemo.</td>
        <td>Eligendi.</td>
        <td>Animi?</td>
        <td>Dignissimos!</td>
    </tr>
    <tr>
        <td>Lorem.</td>
        <td>Nostrum?</td>
        <td>Adipisci?</td>
        <td>Suscipit.</td>
        <td>Eaque.</td>
    </tr>
    <tr>
        <td>Lorem.</td>
        <td>Ullam.</td>
        <td>Quo.</td>
        <td>Nemo.</td>
        <td>Ducimus.</td>
    </tr>
    </tbody>
</table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
        crossorigin="anonymous"></script>
</body>
</html>