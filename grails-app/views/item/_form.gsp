<%@ page import="com.toastcoders.openorder.cart.Item" %>



<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'name', 'error')} required">
    <label for="name">
        <g:message code="item.name.label" default="Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="name" required="" value="${itemInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'thumbnailImage', 'error')} ">
    <label for="thumbnailImage">
        <g:message code="item.thumbnailImage.label" default="Thumbnail Image"/>

    </label>
    <g:textField name="thumbnailImage" value="${itemInstance?.thumbnailImage}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'description', 'error')} ">
    <label for="description">
        <g:message code="item.description.label" default="Description"/>

    </label>
    <g:textField name="description" value="${itemInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'category', 'error')} required">
    <label for="category">
        <g:message code="item.category.label" default="Category"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="category" name="category.id" from="${com.toastcoders.openorder.cart.Category.list()}" optionKey="id"
              required="" optionValue="name" value="${itemInstance?.category?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'featuredItem', 'error')} ">
    <label for="featuredItem">
        <g:message code="item.featuredItem.label" default="Featured Item"/>

    </label>
    <g:checkBox name="featuredItem" value="${itemInstance?.featuredItem}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'isOnSale', 'error')} ">
    <label for="isOnSale">
        <g:message code="item.isOnSale.label" default="Is On Sale"/>

    </label>
    <g:checkBox name="isOnSale" value="${itemInstance?.isOnSale}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'orderLimit', 'error')} required">
    <label for="orderLimit">
        <g:message code="item.orderLimit.label" default="Order Limit"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="orderLimit" type="number" value="${itemInstance.orderLimit}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'price', 'error')} required">
    <label for="price">
        <g:message code="item.price.label" default="Price"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="price" value="${fieldValue(bean: itemInstance, field: 'price')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'quantity', 'error')} required">
    <label for="quantity">
        <g:message code="item.quantity.label" default="Quantity"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="quantity" type="number" value="${itemInstance.quantity}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'salePrice', 'error')} required">
    <label for="salePrice">
        <g:message code="item.salePrice.label" default="Sale Price"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="salePrice" value="${fieldValue(bean: itemInstance, field: 'salePrice')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'splitable', 'error')} ">
    <label for="splitable">
        <g:message code="item.splitable.label" default="Splitable"/>

    </label>
    <g:checkBox name="splitable" value="${itemInstance?.splitable}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'vendor', 'error')} required">
    <label for="vendor">
        <g:message code="item.vendor.label" default="Vendor"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="vendor" name="vendor.id" from="${com.toastcoders.openorder.cart.Vendor.list()}" optionKey="id"
              optionValue="name" required="" value="${itemInstance?.vendor?.id}" class="many-to-one"/>

</div>

