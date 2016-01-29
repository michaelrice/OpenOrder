<%@ page import="com.toastcoders.openorder.cart.Category" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body role="document">

<div class="container">
    <h3><g:message code="default.show.label" args="[entityName]"/></h3>
    <div class="jumbotron">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <ul class="list-unstyled">

            <g:if test="${categoryInstance?.items}">
                <li class="list-cell">
                    <span id="items-label" class="property-label"><g:message code="category.items.label"
                                                                             default="Items"/></span>

                    <g:each in="${categoryInstance.items}" var="i">
                        <span class="property-value" aria-labelledby="items-label"><g:link controller="item" action="show"
                                                                                           id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
                    </g:each>

                </li>
            </g:if>

            <g:if test="${categoryInstance?.name}">
                <li class="list-cell">
                    <h4><g:fieldValue bean="${categoryInstance}" field="name"/></h4>
                </li>
            </g:if>

            <g:if test="${categoryInstance?.subCategories}">
                <div class="well-sm">
                <li class="subcategory list-cell">
                    <span id="subCategories-label" class="property-label"><g:message code="category.subCategories.label"
                                                                                     default="Sub Categories"/></span>

                    <g:each in="${categoryInstance.subCategories}" var="s">
                        <span class="property-value" aria-labelledby="subCategories-label"><g:link controller="category"
                                                                                                   action="show"
                                                                                                   id="${s?.id}">${s?.name}</g:link>,</span>
                    </g:each>

                </li>
                </div>
            </g:if>

        </ul>
        </div>
    <g:form url="[resource: categoryInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="btn btn-lg btn-info" action="edit" resource="${categoryInstance}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="btn btn-lg btn-danger" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message',
                                    default: 'Are you sure?')}');"
            />
        </fieldset>
    </g:form>
    </div>
</body>
</html>
