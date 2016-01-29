<%@ page import="com.toastcoders.openorder.Customer" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'customer.label', default: 'Customer')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body role="document">
<g:render template="nav" />

<div class="container" role="main">
    <div class="jumbotron">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
        <g:render template="customer_table" />
    <g:form url="[resource: customerInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="btn btn-info btn-group-lg" action="edit" resource="${customerInstance}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="btn-danger btn btn-group-lg" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
    </div>
</div>
</body>
</html>
