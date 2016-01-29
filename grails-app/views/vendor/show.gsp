
<%@ page import="com.toastcoders.openorder.cart.Vendor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vendor.label', default: 'Vendor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-vendor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-vendor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list vendor">
			
				<g:if test="${vendorInstance?.contactInfo}">
				<li class="fieldcontain">
					<span id="contactInfo-label" class="property-label"><g:message code="vendor.contactInfo.label" default="Contact Info" /></span>
					
						<span class="property-value" aria-labelledby="contactInfo-label"><g:fieldValue bean="${vendorInstance}" field="contactInfo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendorInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="vendor.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${vendorInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendorInstance?.items}">
				<li class="fieldcontain">
					<span id="items-label" class="property-label"><g:message code="vendor.items.label" default="Items" /></span>
					
						<g:each in="${vendorInstance.items}" var="i">
						<span class="property-value" aria-labelledby="items-label"><g:link controller="item" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${vendorInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="vendor.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${vendorInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendorInstance?.showContactInfoToUser}">
				<li class="fieldcontain">
					<span id="showContactInfoToUser-label" class="property-label"><g:message code="vendor.showContactInfoToUser.label" default="Show Contact Info To User" /></span>
					
						<span class="property-value" aria-labelledby="showContactInfoToUser-label"><g:formatBoolean boolean="${vendorInstance?.showContactInfoToUser}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:vendorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${vendorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
