<%@ page import="com.toastcoders.openorder.cart.Item" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-item" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-item" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="table">
        <thead>
        <tr>

            <g:sortableColumn property="name" title="${message(code: 'item.name.label', default: 'Name')}"/>

            <g:sortableColumn property="thumbnailImage"
                              title="${message(code: 'item.thumbnailImage.label', default: 'Thumbnail Image')}"/>

            <g:sortableColumn property="description"
                              title="${message(code: 'item.description.label', default: 'Description')}"/>

            <th><g:message code="item.cart.label" default="Cart"/></th>

            <th><g:message code="item.category.label" default="Category"/></th>

            <g:sortableColumn property="featuredItem"
                              title="${message(code: 'item.featuredItem.label', default: 'Featured Item')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${itemInstanceList}" status="i" var="itemInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${itemInstance.id}">${fieldValue(bean: itemInstance, field: "name")}</g:link></td>

                <td>${fieldValue(bean: itemInstance, field: "thumbnailImage")}</td>

                <td>${fieldValue(bean: itemInstance, field: "description")}</td>

                <td>${fieldValue(bean: itemInstance, field: "cart")}</td>

                <td>${fieldValue(bean: itemInstance, field: "category.name")}</td>

                <td><g:formatBoolean boolean="${itemInstance.featuredItem}"/></td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${itemInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
