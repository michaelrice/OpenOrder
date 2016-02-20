<%@ page import="com.toastcoders.openorder.cart.Item" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body role="document">

<div id="show-item" class="container" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="alert-danger" role="status">${flash.message}</div>
    </g:if>
    <div class="jumbotron col-xs-6">
    <ul class="list-unstyled">

        <g:if test="${itemInstance?.name}">

            <li class="fieldcontain">
                <div class="col-xs-6">
                    <span id="name-label" class="property-label"><g:message code="item.name.label" default="Name"/></span>
                </div>
                <div class="col-xs-6">
                    <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${itemInstance}"
                                                                                            field="name"/></span>
                </div>
            </li>
        </g:if>

        <g:if test="${itemInstance?.thumbnailImage}">
            <li class="fieldcontain">
                <div class="col-xs-6">
                    <span id="thumbnailImage-label" class="property-label"><g:message code="item.thumbnailImage.label"
                                                                                      default="Thumbnail Image"/></span>
                </div>

            </li>
        </g:if>

        <g:if test="${itemInstance?.description}">
            <li class="fieldcontain">
                <div class="col-xs-6">
                    <span id="description-label" class="property-label"><g:message code="item.description.label"
                                                                                   default="Description"/></span>
                </div>
                <div class="col-xs-6">
                    <span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${itemInstance}"
                                                                                                   field="description"/></span>
                </div>
            </li>
        </g:if>

        <g:if test="${itemInstance?.cart}">
            <li class="fieldcontain">
                <div class="col-xs-6">
                <span id="cart-label" class="property-label"><g:message code="item.cart.label" default="Cart"/></span>
                </div>
                <div class="col-xs-6">
                <span class="property-value" aria-labelledby="cart-label"><g:link controller="cart" action="show"
                                                                                  id="${itemInstance?.cart?.id}">${itemInstance?.cart?.encodeAsHTML()}</g:link></span>
                </div>
            </li>
        </g:if>

        <g:if test="${itemInstance?.category}">
            <li class="fieldcontain">
                <div class="col-xs-6">
                <span id="category-label" class="property-label"><g:message code="item.category.label"
                                                                            default="Category"/></span>
                </div>
                <div class="col-xs-6">
                <span class="property-value" aria-labelledby="category-label"><g:link controller="category"
                                                                                      action="show"
                                                                                      id="${itemInstance?.category?.id}">${itemInstance?.category?.name}</g:link></span>
                </div>
            </li>
        </g:if>

        <g:if test="${itemInstance?.featuredItem}">
            <li class="fieldcontain">
                <div class="col-xs-6">
                <span id="featuredItem-label" class="property-label"><g:message code="item.featuredItem.label"
                                                                                default="Featured Item"/></span>
                </div>
                <div class="col-xs-6">
                <span class="property-value" aria-labelledby="featuredItem-label"><g:formatBoolean
                        boolean="${itemInstance?.featuredItem}"/></span>
                </div>
            </li>
        </g:if>

        <g:if test="${itemInstance?.isOnSale}">
            <li class="fieldcontain">
                <div class="col-xs-6">
                <span id="isOnSale-label" class="property-label"><g:message code="item.isOnSale.label"
                                                                            default="Is On Sale"/></span>
                </div>
                <div class="col-xs-6">
                <span class="property-value" aria-labelledby="isOnSale-label"><g:formatBoolean
                        boolean="${itemInstance?.isOnSale}"/></span>
                </div>
            </li>
        </g:if>

        <g:if test="${itemInstance?.orderLimit}">
            <li class="fieldcontain">
                <div class="col-xs-6">
                <span id="orderLimit-label" class="property-label"><g:message code="item.orderLimit.label"
                                                                              default="Order Limit"/></span>
                </div>
                <div class="col-xs-6">
                <span class="property-value" aria-labelledby="orderLimit-label"><g:fieldValue bean="${itemInstance}"
                                                                                              field="orderLimit"/></span>
                </div>
            </li>
        </g:if>

        <g:if test="${itemInstance?.price}">
            <li class="fieldcontain">
                <div class="col-xs-6">
                <span id="price-label" class="property-label"><g:message code="item.price.label"
                                                                         default="Price"/></span>
                </div>
                <div class="col-xs-6">
                <span class="property-value" aria-labelledby="price-label"><g:formatNumber bean="${itemInstance}" number="${itemInstance.price}" type="currency" currencyCode="USD" /></span>
                </div>
            </li>
        </g:if>

        <g:if test="${itemInstance?.quantity}">
            <li class="fieldcontain">
                <div class="col-xs-6">
                <span id="quantity-label" class="property-label"><g:message code="item.quantity.label"
                                                                            default="Quantity"/></span>
                </div>
                <div class="col-xs-6">
                <span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${itemInstance}"
                                                                                            field="quantity"/></span>
                </div>
            </li>
        </g:if>

        <g:if test="${itemInstance?.salePrice}">
            <li class="fieldcontain">
                <div class="col-xs-6">
                <span id="salePrice-label" class="property-label"><g:message code="item.salePrice.label"
                                                                             default="Sale Price"/></span>
                </div>
                <div class="col-xs-6">
                <span class="property-value" aria-labelledby="salePrice-label"><g:fieldValue bean="${itemInstance}"
                                                                                             field="salePrice"/></span>
                </div>
            </li>
        </g:if>

        <g:if test="${itemInstance?.splitable}">
            <li class="fieldcontain">
                <div class="col-xs-6">
                <span id="splitable-label" class="property-label"><g:message code="item.splitable.label"
                                                                             default="Splitable"/></span>
                </div>
                <div class="col-xs-6">
                <span class="property-value" aria-labelledby="splitable-label"><g:formatBoolean
                        boolean="${itemInstance?.splitable}"/></span>
                </div>
            </li>
        </g:if>

        <g:if test="${itemInstance?.vendor}">
            <li class="fieldcontain">
                <div class="col-xs-6">
                <span id="vendor-label" class="property-label"><g:message code="item.vendor.label"
                                                                          default="Vendor"/></span>
                </div>
                <div class="col-xs-6">
                <span class="property-value" aria-labelledby="vendor-label"><g:link controller="vendor" action="show"
                                                                                    id="${itemInstance?.vendor?.id}">${itemInstance?.vendor?.name}</g:link></span>
                </div>
            </li>
        </g:if>

    </ul>
<sec:ifAnyGranted roles="ROLE_ADMIN">
        <hr class="col-xs-12">
    <g:form class="col-xs-12" url="[resource: itemInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="btn btn-info btn-group-lg" action="edit" resource="${itemInstance}"><g:message code="default.button.edit.label"
                                                                                     default="Edit"/></g:link>
            <g:actionSubmit class="btn btn-group-lg btn-danger" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
    <g:link action="create" name="Add Item" class="col-xs-6" >Add Item</g:link>
</sec:ifAnyGranted>
        </div>
    </div>
</body>
</html>
