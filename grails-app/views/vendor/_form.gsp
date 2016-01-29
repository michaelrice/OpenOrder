<%@ page import="com.toastcoders.openorder.cart.Vendor" %>



<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'contactInfo', 'error')} required">
	<label for="contactInfo">
		<g:message code="vendor.contactInfo.label" default="Contact Info" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactInfo" required="" value="${vendorInstance?.contactInfo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="vendor.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${vendorInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'items', 'error')} ">
	<label for="items">
		<g:message code="vendor.items.label" default="Items" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${vendorInstance?.items?}" var="i">
    <li><g:link controller="item" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="item" action="create" params="['vendor.id': vendorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'item.label', default: 'Item')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="vendor.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${vendorInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'showContactInfoToUser', 'error')} ">
	<label for="showContactInfoToUser">
		<g:message code="vendor.showContactInfoToUser.label" default="Show Contact Info To User" />
		
	</label>
	<g:checkBox name="showContactInfoToUser" value="${vendorInstance?.showContactInfoToUser}" />

</div>

