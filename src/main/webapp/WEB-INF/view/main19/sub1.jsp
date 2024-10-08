<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>/main19/sub1.jsp</h3>
<form action="/main19/sub1">
    <input type="text" name="address" value="서울">
    <br>
    <input type="text" name="nick" value="수도">
    <%-- submit(제출) 버튼 --%>
    <%--  submit 버튼 클릭시
          : action 속성(attribute)에 명시된 위치로
            method 속성(attribute) 방식으로
            form 요소들의 name=value 쌍이 전달 됨 --%>
    <button>제출</button>
</form>
<hr>
<%-- /main19/sub2?name=흥민&age=44 --%>
<form action="/main19/sub2">
    <input type="text" name="name" value="흥민">
    <br>
    <input type="text" name="age" value="44">
    <br>
    <button>전송</button>
</form>
<hr>
<form action="/main19/sub4">
    <input type="text" name="name" value="흥민">
    <br>
    <select name="food" id="">
        <option value="pizza">val1</option>
        <option value="coffee">val2</option>
        <option value="burger">val3</option>
    </select>
    <br>
    <textarea name="memo" id="" cols="30" rows="10">Lorem ipsum dolor.</textarea>
    <br>
    <button>전송</button>
</form>

<hr>
<form action="/main19/sub5">
    <input type="checkbox" name="city" id="" value="seoul">
    Lorem.
    <br>
    <input type="checkbox" name="city" id="" value="busan">
    Aliquid!
    <br>
    <input type="checkbox" name="city" id="" value="jeju">
    Atque.
    <br>
    <button>전송</button>
</form>
<hr>
<form action="/main19/sub6">
    <%-- 체크박스에 value가 없는 경우 --%>
    <input type="checkbox" name="accept">
    동의합니다.
    <br>
    <button>전송</button>
</form>
</body>
</html>
