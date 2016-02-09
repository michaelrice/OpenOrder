<%@ page import="com.toastcoders.openorder.cart.Item" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-item" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-item" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list item">

        <g:if test="${itemInstance?.name}">
            <li class="fieldcontain">
                <span id="name-label" class="property-label"><g:message code="item.name.label" default="Name"/></span>

                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${itemInstance}"
                                                                                        field="name"/></span>

            </li>
        </g:if>

        <g:if test="${itemInstance?.thumbnailImage}">
            <li class="fieldcontain">
                <span id="thumbnailImage-label" class="property-label"><g:message code="item.thumbnailImage.label"
                                                                                  default="Thumbnail Image"/></span>

            </li>
        </g:if>

        <g:if test="${itemInstance?.description}">
            <li class="fieldcontain">
                <span id="description-label" class="property-label"><g:message code="item.description.label"
                                                                               default="Description"/></span>

                <span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${itemInstance}"
                                                                                               field="description"/></span>

            </li>
        </g:if>

        <g:if test="${itemInstance?.cart}">
            <li class="fieldcontain">
                <span id="cart-label" class="property-label"><g:message code="item.cart.label" default="Cart"/></span>

                <span class="property-value" aria-labelledby="cart-label"><g:link controller="cart" action="show"
                                                                                  id="${itemInstance?.cart?.id}">${itemInstance?.cart?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${itemInstance?.category}">
            <li class="fieldcontain">
                <span id="category-label" class="property-label"><g:message code="item.category.label"
                                                                            default="Category"/></span>

                <span class="property-value" aria-labelledby="category-label"><g:link controller="category"
                                                                                      action="show"
                                                                                      id="${itemInstance?.category?.id}">${itemInstance?.category?.name}</g:link></span>

            </li>
        </g:if>

        <g:if test="${itemInstance?.featuredItem}">
            <li class="fieldcontain">
                <span id="featuredItem-label" class="property-label"><g:message code="item.featuredItem.label"
                                                                                default="Featured Item"/></span>

                <span class="property-value" aria-labelledby="featuredItem-label"><g:formatBoolean
                        boolean="${itemInstance?.featuredItem}"/></span>

            </li>
        </g:if>

        <g:if test="${itemInstance?.isOnSale}">
            <li class="fieldcontain">
                <span id="isOnSale-label" class="property-label"><g:message code="item.isOnSale.label"
                                                                            default="Is On Sale"/></span>

                <span class="property-value" aria-labelledby="isOnSale-label"><g:formatBoolean
                        boolean="${itemInstance?.isOnSale}"/></span>

            </li>
        </g:if>

        <g:if test="${itemInstance?.orderLimit}">
            <li class="fieldcontain">
                <span id="orderLimit-label" class="property-label"><g:message code="item.orderLimit.label"
                                                                              default="Order Limit"/></span>

                <span class="property-value" aria-labelledby="orderLimit-label"><g:fieldValue bean="${itemInstance}"
                                                                                              field="orderLimit"/></span>

            </li>
        </g:if>

        <g:if test="${itemInstance?.price}">
            <li class="fieldcontain">
                <span id="price-label" class="property-label"><g:message code="item.price.label"
                                                                         default="Price"/></span>

                <span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${itemInstance}"
                                                                                         field="price"/></span>

            </li>
        </g:if>

        <g:if test="${itemInstance?.quantity}">
            <li class="fieldcontain">
                <span id="quantity-label" class="property-label"><g:message code="item.quantity.label"
                                                                            default="Quantity"/></span>

                <span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${itemInstance}"
                                                                                            field="quantity"/></span>

            </li>
        </g:if>

        <g:if test="${itemInstance?.salePrice}">
            <li class="fieldcontain">
                <span id="salePrice-label" class="property-label"><g:message code="item.salePrice.label"
                                                                             default="Sale Price"/></span>

                <span class="property-value" aria-labelledby="salePrice-label"><g:fieldValue bean="${itemInstance}"
                                                                                             field="salePrice"/></span>

            </li>
        </g:if>

        <g:if test="${itemInstance?.splitable}">
            <li class="fieldcontain">
                <span id="splitable-label" class="property-label"><g:message code="item.splitable.label"
                                                                             default="Splitable"/></span>

                <span class="property-value" aria-labelledby="splitable-label"><g:formatBoolean
                        boolean="${itemInstance?.splitable}"/></span>

            </li>
        </g:if>

        <g:if test="${itemInstance?.vendor}">
            <li class="fieldcontain">
                <span id="vendor-label" class="property-label"><g:message code="item.vendor.label"
                                                                          default="Vendor"/></span>

                <span class="property-value" aria-labelledby="vendor-label"><g:link controller="vendor" action="show"
                                                                                    id="${itemInstance?.vendor?.id}">${itemInstance?.vendor?.name}</g:link></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: itemInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${itemInstance}"><g:message code="default.button.edit.label"
                                                                                     default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
