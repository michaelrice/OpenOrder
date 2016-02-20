<%@ page import="com.toastcoders.openorder.cart.Item" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body role="document">
    <div id="edit-item" class="container" role="main">
        <h1><g:message code="default.edit.label" args="[entityName]"/></h1>
        <g:if test="${flash.message}">
            <div class="alert-danger" role="status">${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${itemInstance}">
            <ul class="alert" role="alert">
                <g:eachError bean="${itemInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                            error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
        <div class="jumbotron">
            <g:form class="form-horizontal" url="[resource: itemInstance, action: 'update']" method="PUT" enctype="multipart/form-data">
                <g:hiddenField name="version" value="${itemInstance?.version}"/>
                <fieldset class="form">
                    <g:render template="form"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:actionSubmit class="btn btn-lg btn-primary" action="update"
                                    value="${message(code: 'default.button.update.label', default: 'Update')}"/>
                </fieldset>
            </g:form>
        </div>
    </div>
</body>
</html>
