<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body role="document">

<div id="create-item" class="container" role="main">
    <h1><g:message code="default.create.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="alert-danger" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${itemInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${itemInstance}" var="error">
                <li class="alert-danger" <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <div class="jumbotron">
        <g:form url="[resource: itemInstance, action: 'save']" enctype="multipart/form-data">
            <fieldset class="form">
                <g:render template="form"/>
            </fieldset>
            <fieldset class="buttons">
                <g:makeButton message="Create" btnType="default" />
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>
