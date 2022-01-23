<%@ page contentType="text/html;charset=UTF-8" language="Java" %>
<html>
<head>
    <title>Title</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>

<div style="text-align: center;">
    <h3>Вывод элементов</h3>
    <table align="center">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
        </tr>
        </thead>
        <tbody>
        <%--@elvariable id="lists" type="java.util.List"--%>
        <c:forEach var="list" items="${lists}">
            <%--@elvariable id="lists" type="java.util.Order"--%>
            <c:forEach var="item" items="${list}">
            <tr>
                <td>${item.uniqueID}</td>
                <td>${item.name}</td>
            </tr>
            </c:forEach>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
