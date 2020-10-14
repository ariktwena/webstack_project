<%--
  Created by IntelliJ IDEA.
  User: Tweny
  Date: 14/10/2020
  Time: 18.43
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Page</title>
</head>
<body>

<h1>Admin Page</h1>

<p>Welcome ${requestScope.firstName} ${requestScope.lastName}</p>

<br>
<br>
<br>

<p style="margin: auto">The list of names from ArrayList: </p>
<c:forEach var="element" items="${requestScope.listOfNames}">

    <span style="color: blue">${element}</span>
    <br>

</c:forEach>

<br>
<br>
<br>

<p style="margin: auto">The list of names from HashMap: </p>
<c:forEach var="element" items="${requestScope.nameAgeMap}">

    <span style="color: green">${element.key} ${element.value}</span>
    <br>

</c:forEach>


<br>
<br>
<br>

<p style="margin: auto">The list of names from Set: </p>
<c:forEach var="element" items="${requestScope.setOfNames}">

    <span style="color: red">${element}</span>
    <br>

</c:forEach>




</body>
</html>
