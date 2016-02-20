<%@ page import="com.toastcoders.openorder.cart.Category" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body role="document">

    <div class="container">
        <h3><g:message code="default.edit.label" args="[entityName]"/></h3>
        <div class="jumbotron">
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${categoryInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${categoryInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
            <g:form class="form-horizontal" url="[resource: categoryInstance, action: 'update']" method="PUT">
                <g:hiddenField name="version" value="${categoryInstance?.version}"/>
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
