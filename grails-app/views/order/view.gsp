<%--
  Created by IntelliJ IDEA.
  User: errr
  Date: 3/26/16
  Time: 4:29 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>View Orders</title>
</head>

<body>
<div class="container">
<g:each in="${orders}" var="order">
    <g:render template="detail"  model="${[order: order]}"/>
</g:each>
</body>
</div>
</html>
