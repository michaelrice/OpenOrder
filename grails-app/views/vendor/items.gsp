<%--
  Created by IntelliJ IDEA.
  User: errr
  Date: 2/22/16
  Time: 9:26 PM
--%>

<%@ page import="grails.plugin.springsecurity.SpringSecurityUtils; com.toastcoders.openorder.cart.Vendor" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'vendor.label', default: 'Vendor')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body role="document">
<div class="container">
    <h1>${vendorInstance.name} Products</h1>
    <g:if test="${flash.message}">
        <div class="alert-warning" role="status">${flash.message}</div>
    </g:if>
    <div class="jumbotron">
        <ul class="list-unstyled">
            <g:if test="${vendorInstance?.items}">
                <li class="fieldcontain">
                    <g:each in="${vendorInstance.items}" var="i">
                        <span class="property-value" aria-labelledby="items-label"><g:link controller="item" action="show"
                                                                                           id="${i.id}">${i.name}</g:link></span>
                    </g:each>

                </li>
            </g:if>
            </ul>
        </div>
    </div>
</body>
</html>
