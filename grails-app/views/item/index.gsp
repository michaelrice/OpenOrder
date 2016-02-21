<%@ page import="com.toastcoders.openorder.cart.Item" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body role="document">

<div id="list-item" class="container" role="main">
    <h1><g:message code="default.list.label" message="Product List"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="table">
        <thead>
        <tr>

            <g:sortableColumn property="name" title="${message(code: 'item.name.label', default: 'Name')}"/>

            <g:sortableColumn property="thumbnailImage"
                              title="${message(code: 'item.thumbnailImage.label', default: 'Photo')}"/>

            <th><g:message code="item.category.label" default="Category"/></th>

            <g:sortableColumn property="price" title="Price" />
            <g:sortableColumn property="salePrice" title="Sale Price" />
            <th>Add To Cart</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${itemInstanceList}" status="i" var="itemInstance">
            <g:if test="${itemInstance.isOnSale}">
                <tr class="danger">
            </g:if>
            <g:else>
            <tr class="${(i % 2) == 0 ? 'success' : ''}">
            </g:else>

                <td><g:link action="show"
                            id="${itemInstance.id}">${fieldValue(bean: itemInstance, field: "name")}</g:link></td>

                <td>
                    <g:if test="${itemInstance?.thumbnailImage}">
                    <g:img uri="${itemInstance?.thumbnailImage}" class="img-thumbnail" width="128" height="128" />
                    </g:if>
                    <g:else></g:else>
                </td>


                <td>${fieldValue(bean: itemInstance, field: "category.name")}</td>

                <td>${formatNumber(number: itemInstance.price, type: "currency", currencyCode: "USD")}</td>
                <g:if test="${itemInstance.isOnSale}">
                <td>${formatNumber(number: itemInstance.salePrice, type: "currency", currencyCode:"USD")}</td>
                </g:if>
                <g:else>
                    <td></td>
                </g:else>
                <td><g:link controller="cart" action="addItem" id="${itemInstance.id}">Add to cart</g:link> </td>
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
