<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="ru">
<head>
    <title>Meals</title>
    <style>
        .normal {
            color: green;
        }

        .excees {
            color: red;
        }
    </style>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
<table border="1" cellspacing="1" cellpadding="1">
    <tr>
        <th>Date</th>
        <th>Description</th>
        <th>Calories</th>
    </tr>
    <c:forEach items="${meals}" var="um">
        <jsp:useBean id="um" type="ru.javawebinar.topjava.model.MealTo"/>

        <tr class="${um.excess? 'excees' : 'normal'}">

            <td> ${um.dateTime.toLocalDate()} ${um.dateTime.toLocalTime()} </td>
            <td> ${um.description}</td>
            <td> ${um.calories}</td>
        </tr>
    </c:forEach>

</table>
</body>
</html>