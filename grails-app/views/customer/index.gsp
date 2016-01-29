<%@ page import="com.toastcoders.openorder.Customer" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'customer.label', default: 'Customer')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body role="document">

<g:render template="nav" />

<div class="container">
    <div class="page-header">
        <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    </div>
    <div class="jumbotron">
        Below is a list of all customers in the system.
        <br /><br />
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <div>
            <g:set var="custLoop" value="${true}" />
            <g:render template="customer_table" />
        </div>
    </div>
</div>

        <g:paginate total="${customerInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
