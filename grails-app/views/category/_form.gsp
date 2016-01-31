<%@ page import="com.toastcoders.openorder.cart.Category" %>

<div class="${hasErrors(bean: categoryInstance, field: 'name', 'error')} required">
    <label for="name">
        <g:message code="category.name.label" default="Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="name" required="" value="${categoryInstance?.name}"/>

</div>

<div class="${hasErrors(bean: categoryInstance, field: 'subCategories', 'error')} well-sm">
    <label for="subCategories">
        <g:message code="category.subCategories.label" default="Sub Categories"/>

    </label>
    <g:select name="subCategories" from="${com.toastcoders.openorder.cart.Category.list()}" multiple="multiple"
              optionKey="id" size="5" value="${categoryInstance?.subCategories*.id}" optionValue="name" class="input-lg form-control col-xs-6" />

</div>

<div class="${hasErrors(bean: categoryInstance, field: 'parentCategory', 'error')} well-sm">
<label for="parentCategory">
    <g:message code="category.parentCategory.label" default="Parent Category"/>

</label>
<g:select name="parentCategory" from="${com.toastcoders.openorder.cart.Category.list()}" multiple="multiple"
          optionKey="id" optionValue="name" size="5" value="${categoryInstance?.parentCategory*.id}" class="input-lg form-control" />

</div>

<div class="${hasErrors(bean: categoryInstance, field: 'items', 'error')} well-sm">
    <label for="items">
        <g:message code="category.items.label" default="Items"/>

    </label>

    <ul class="list-unstyled">
        <g:each in="${categoryInstance?.items ?}" var="i">
            <li><g:link controller="item" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
        </g:each>
    </ul>

</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'isPrimary', 'error')} ">
    <label for="showContactInfoToUser">
        <g:message code="category.isPrimary.label" default="Is this a top level category" />

    </label>
    <g:checkBox name="isPrimary" value="${categoryInstance?.isPrimary}" />

</div>
