<%@ page import="com.toastcoders.openorder.cart.Category" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body role="document">
<div class="container">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="alert-warning" role="status">${flash.message}</div>
    </g:if>
    <div class="jumbotron">
    <table class="table">
        <thead>
        <tr>

            <g:sortableColumn property="name" title="${message(code: 'category.name.label', default: 'Name')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${categoryInstanceList}" status="i" var="categoryInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${categoryInstance.id}">${fieldValue(bean: categoryInstance, field: "name")}</g:link></td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${categoryInstanceCount ?: 0}"/>
    </div>
    </div>
    <g:link action="create" class="btn btn-primary btn-lg">Add Category</g:link>
</div>
</body>
</html>
