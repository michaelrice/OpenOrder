<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'vendor.label', default: 'Vendor')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>
<div id="create-vendor" class="container" role="main">
    <h1><g:message code="default.create.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${vendorInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${vendorInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <div class="jumbotron">
    <g:form url="[resource: vendorInstance, action: 'save']">
        <fieldset class="form">
            <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons">
            <g:makeButton btnType="default" message="Create" />
        </fieldset>
    </g:form>
        </div>
</div>
</body>
</html>
