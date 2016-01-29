<%@ page import="com.toastcoders.openorder.cart.Vendor" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'vendor.label', default: 'Vendor')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body role="document">

<div id="list-vendor" class="container">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <div class="jumbotron">
        <table class="table">
            <thead>
            <tr>
                <g:sortableColumn property="name" title="${message(code: 'vendor.name.label', default: 'Name')}"/>
                <g:sortableColumn property="contactInfo"
                                      title="${message(code: 'vendor.contactInfo.label', default: 'Contact Info')}"/>
                <g:sortableColumn property="description"
                                  title="${message(code: 'vendor.description.label', default: 'Description')}"/>
            </tr>
            </thead>
            <tbody>
            <g:each in="${vendorInstanceList}" status="i" var="vendorInstance">
                <tr>
                    <td><g:link action="show"
                                id="${vendorInstance.id}">${fieldValue(bean: vendorInstance, field: "name")}</g:link></td>

                    <g:if test="${vendorInstance?.showContactInfoToUser || grails.plugin.springsecurity.SpringSecurityUtils.ifAnyGranted("ROLE_ADMIN")}">
                        <td>${fieldValue(bean: vendorInstance, field: "contactInfo")}</td>
                    </g:if>
                    <g:else>
                        <td>&nbsp;</td>
                    </g:else>
                    <td>${fieldValue(bean: vendorInstance, field: "description")}</td>

                </tr>
            </g:each>
            </tbody>
        </table>

        <div class="pagination">
            <g:paginate total="${vendorInstanceCount ?: 0}"/>
        </div>
    </div>
</div>
</body>
</html>
