<%@ page import="com.toastcoders.openorder.Customer" %>

<div class="form-group fieldcontain ${hasErrors(bean: customerInstance, field: 'username', 'error')} required">
    <label for="username">
        <g:message code="customer.username.label" default="Username"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="username" required="" value="${customerInstance?.username}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: customerInstance, field: 'password', 'error')} required">
    <label for="password">
        <g:message code="customer.password.label" default="Password"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="password" required="" value="${customerInstance?.password}"/>
</div>

<div class="${hasErrors(bean: customerInstance, field: 'firstName', 'error')} ">
    <label for="firstName">
        <g:message code="customer.firstName.label" default="First Name"/>
    </label>
    <g:textField name="firstName" value="${customerInstance?.firstName}"/>
</div>

<div class="${hasErrors(bean: customerInstance, field: 'lastName', 'error')} ">
    <label for="lastName">
        <g:message code="customer.lastName.label" default="Last Name"/>
    </label>
    <g:textField name="lastName" value="${customerInstance?.lastName}"/>
</div>

<div class="${hasErrors(bean: customerInstance, field: 'city', 'error')} ">
    <label for="city">
        <g:message code="customer.city.label" default="City"/>
    </label>
    <g:textField name="city" value="${customerInstance?.city}"/>
</div>

<div class="${hasErrors(bean: customerInstance, field: 'state', 'error')} ">
    <label for="state">
        <g:message code="customer.state.label" default="State"/>
    </label>
    <g:textField name="state" value="${customerInstance?.state}"/>
</div>

<div class="${hasErrors(bean: customerInstance, field: 'address', 'error')} ">
    <label for="address">
        <g:message code="customer.address.label" default="Street Address"/>
    </label>
    <g:textField name="address" value="${customerInstance?.address}"/>
</div>

<div class="${hasErrors(bean: customerInstance, field: 'primaryPhoneNumber', 'error')} ">
    <label for="primaryPhoneNumber">
        <g:message code="customer.primaryPhoneNumber.label" default="Primary Phone #"/>
    </label>
    <g:textField name="primaryPhoneNumber" value="${customerInstance?.primaryPhoneNumber}"/>
</div>

<div class="${hasErrors(bean: customerInstance, field: 'secondaryPhoneNumber', 'error')} ">
    <label for="secondaryPhoneNumber">
        <g:message code="customer.secondaryPhoneNumber.label" default="Secondary Phone #"/>
    </label>
    <g:textField name="secondaryPhoneNumber" value="${customerInstance?.secondaryPhoneNumber}"/>
</div>

<div class="${hasErrors(bean: customerInstance, field: 'primaryEmail', 'error')} ">
    <label for="primaryEmail">
        <g:message code="customer.primaryEmail.label" default="Primary Email"/>
    </label>
    <g:textField name="primaryEmail" value="${customerInstance?.primaryEmail}"/>
</div>

<div class="${hasErrors(bean: customerInstance, field: 'secondaryEmail', 'error')} ">
    <label for="secondaryEmail">
        <g:message code="customer.secondaryEmail.label" default="Secondary Email"/>
    </label>
    <g:textField name="secondaryEmail" value="${customerInstance?.secondaryEmail}"/>
</div>

<div class="form-group ${hasErrors(bean: customerInstance, field: 'accountExpired', 'error')} ">
    <label for="accountExpired">
        <g:message code="customer.accountExpired.label" default="Account Expired"/>
    </label>
    <g:checkBox name="accountExpired" value="${customerInstance?.accountExpired}" class="checkbox-inline"/>
</div>

<div class="form-group ${hasErrors(bean: customerInstance, field: 'accountLocked', 'error')} ">
    <label for="accountLocked">
        <g:message code="customer.accountLocked.label" default="Account Locked"/>
    </label>
    <g:checkBox name="accountLocked" value="${customerInstance?.accountLocked}" class="checkbox-inline"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: customerInstance, field: 'enabled', 'error')} ">
    <label for="enabled">
        <g:message code="customer.enabled.label" default="Enabled"/>
    </label>
    <g:checkBox name="enabled" value="${customerInstance?.enabled}" class="checkbox-inline"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: customerInstance, field: 'passwordExpired', 'error')} ">
    <label for="passwordExpired">
        <g:message code="customer.passwordExpired.label" default="Password Expired"/>
    </label>
    <g:checkBox name="passwordExpired" value="${customerInstance?.passwordExpired}" class="checkbox-inline" />
</div>

