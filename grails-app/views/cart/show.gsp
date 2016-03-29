<%--
  Created by IntelliJ IDEA.
  User: errr
  Date: 2/20/16
  Time: 5:32 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body role="document">
    <div class="container" id="show-cart">
        <div class="jumbotron">
            <g:if test="${items?.length >= 1}">
                <g:render template="show_all_cart_items" />
            </g:if>
            <g:else>
                <g:render template="empty_cart" />
            </g:else>

        </div>
    </div>
</body>
</html>
