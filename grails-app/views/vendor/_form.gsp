<%@ page import="com.toastcoders.openorder.cart.Vendor" %>


<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'name', 'error')} required">
    <label for="name">
        <g:message code="vendor.name.label" default="Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="name" required="" value="${vendorInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'phoneNumber', 'error')}">
    <label for="phoneNumber">
        <g:message code="vendor.email.label" default="Phone Number"/>
    </label>
    <g:textField name="phoneNumber" value="${vendorInstance?.phoneNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'email', 'error')} ">
    <label for="email">
        <g:message code="vendor.email.label" default="Email"/>
    </label>
    <g:textField name="email" value="${vendorInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'website', 'error')}">
    <label for="website">
        <g:message code="vendor.website.label" default="Website"/>
    </label>
    <g:textField name="website" value="${vendorInstance?.website}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'description', 'error')} required">
    <label for="description">
        <g:message code="vendor.description.label" default="Description"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textArea name="description" required="" value="${vendorInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'showContactInfoToUser', 'error')} ">
    <label for="showContactInfoToUser">
        <g:message code="vendor.showContactInfoToUser.label" default="Show Contact Info To User"/>
    </label>
    <g:checkBox name="showContactInfoToUser" value="${vendorInstance?.showContactInfoToUser}"/>
</div>

