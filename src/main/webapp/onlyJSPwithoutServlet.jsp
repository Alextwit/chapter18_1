<%@ page import="servlet.Order" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="Java" %>
<html>
<head>
    <title>Title</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<%
    List<List<Order>> lists = new ArrayList<List<Order>>();

    lists.add(new ArrayList<Order>() {{
        add(new Order("Order 1"));
        add(new Order("Order 2"));
        add(new Order("Order 3"));
        add(new Order("Order 4"));
        add(new Order("Order 5"));
    }});
%>
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
        <% for (List<Order> list : lists) {%>
            <% for (Order item: list) {%>
                <tr>
                    <td><%= item.getUniqueID() %></td>
                    <td><%= item.getName() %></td>
                </tr>
            <% } %>
        <% } %>
        </tbody>
    </table>
</div>
</body>
</html>
