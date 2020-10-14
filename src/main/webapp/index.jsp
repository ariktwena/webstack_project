<%--
  Created by IntelliJ IDEA.
  User: Tweny
  Date: 13/10/2020
  Time: 21.04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP Page</title>
</head>
<body>

<h1>Post request</h1>

<form action="ServletPage" method="post">
    <label for="firstName">First name:</label><br>
    <input type="text" id="firstName" name="fName" placeholder="Write first name...">

    <br>

    <label for="lastName">Last name:</label><br>
    <input type="text" id="lastName" name="lName" placeholder="Write last name...">

    <br>

    <input type="submit" value="Send" name="submitResult">
</form>

<br>

<h1>Get request</h1>

<form action="ServletPage" method="get">
    <label for="firstName1">First name:</label><br>
    <input type="text" id="firstName1" name="fName" placeholder="Write first name...">

    <br>

    <label for="lastName1">Last name:</label><br>
    <input type="text" id="lastName1" name="lName" placeholder="Write last name...">

    <br>

    <input type="submit" value="Send" name="submitResult">
</form>

</body>
</html>
