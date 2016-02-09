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
        <h1><g:message code="default.show.label" args="[entityName]"/></h1>
        <g:if test="${flash.message}">
            <div class="alert-warning" role="status">${flash.message}</div>
        </g:if>
        <div class="jumbotron">
            <ul class="list-unstyled">
                <g:if test="${vendorInstance?.name}">
                    <li class="fieldcontain">
                        <span id="name-label" class="property-label"><g:message code="vendor.name.label" default="Name"/></span>

                        <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${vendorInstance}"
                                                                                                field="name"/></span>

                    </li>
                </g:if>

                <g:if test="${SpringSecurityUtils.ifAnyGranted("ROLE_ADMIN") || vendorInstance?.showContactInfoToUser}">
                <g:if test="${vendorInstance?.email}">
                    <li class="fieldcontain">
                        <span class="property-label"><g:message code="vendor.email.label" default="Email"/></span>
                        <span class="property-value"><g:fieldValue bean="${vendorInstance}" field="email"/></span>

                    </li>
                </g:if>
                    <g:if test="${vendorInstance?.phoneNumber}">
                        <li class="fieldcontain">
                            <span class="property-label"><g:message code="vendor.phoneNumber.label" default="phoneNumber"/></span>
                            <span class="property-value"><g:fieldValue bean="${vendorInstance}" field="phoneNumber"/></span>

                        </li>
                    </g:if>
                    <g:if test="${vendorInstance?.website}">
                        <li class="fieldcontain">
                            <span id="contactInfo-label" class="property-label"><g:message code="vendor.website.label"
                                                                                           default="Website"/></span>

                            <span class="property-value"><g:fieldValue bean="${vendorInstance}" field="website"/></span>

                        </li>
                    </g:if>
                </g:if>

                <g:if test="${vendorInstance?.description}">
                    <li class="fieldcontain">
                        <span id="description-label" class="property-label"><g:message code="vendor.description.label"
                                                                                       default="Description"/></span>

                        <span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${vendorInstance}"
                                                                                                       field="description"/></span>

                    </li>
                </g:if>

                <g:if test="${vendorInstance?.items}">
                    <li class="fieldcontain">
                        <span id="items-label" class="property-label"><g:message code="vendor.items.label"
                                                                                 default="Items"/></span>

                        <g:each in="${vendorInstance.items}" var="i">
                            <span class="property-value" aria-labelledby="items-label"><g:link controller="item" action="show"
                                                                                               id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
                        </g:each>

                    </li>
                </g:if>
                <g:if test="${vendorInstance?.showContactInfoToUser}">
                    <li class="fieldcontain">
                        <span id="showContactInfoToUser-label" class="property-label"><g:message
                                code="vendor.showContactInfoToUser.label" default="Show Contact Info To User"/></span>

                        <span class="property-value" aria-labelledby="showContactInfoToUser-label"><g:formatBoolean
                                boolean="${vendorInstance?.showContactInfoToUser}"/></span>
                    </li>
                </g:if>
            </ul>
            <sec:ifAnyGranted roles="ROLE_ADMIN">
                <g:form url="[resource: vendorInstance, action: 'delete']" method="DELETE">
                    <fieldset class="buttons">
                        <g:link class="btn btn-info btn-group-lg" action="edit" resource="${vendorInstance}"><g:message code="default.button.edit.label"
                                                                                                                  default="Edit"/></g:link>
                        <g:actionSubmit class="btn btn-danger btn-group-lg" action="delete"
                                        value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                        onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                    </fieldset>
                </g:form>
            </sec:ifAnyGranted>
        </div>
    </div>
</body>
</html>
