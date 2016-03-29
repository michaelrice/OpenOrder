<%--
  Created by IntelliJ IDEA.
  User: errr
  Date: 1/31/16
  Time: 4:13 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name='layout' content='main'/>
    <title><g:message code="springSecurity.login.title"/></title>
</head>

<body role="document">
    <div class="container">
        <div class="col-xs-3">
            <h4>User Management</h4>
            <ul class="list-unstyled">
                <li><g:link controller="customer" action="create" name="Add New Customer">Add New Customer</g:link></li>
                <li><g:link controller="customer" action="index" name="List All Customers">List All Customers</g:link></li>
            </ul>
        </div>
        <div class="col-xs-3">
            <h4>Product Management</h4>
            <ul class="list-unstyled">
                <li><g:link controller="category" action="create" name="Add New Category">Add New Category</g:link></li>
                <li><g:link controller="vendor" action="create" name="Add New Vendor">Add New Vendor</g:link></li>
                <li><g:link controller="item" action="create" name="Add New Product">Add New Product</g:link></li>
            </ul>
        </div>
        <div class="col-xs-3">
            <h4>Reporting</h4>
            <ul class="list-unstyled">
                <li><g:link Weekly Order Report</li>
            </ul>
        </div>
        <div class="col-xs-3">
            <h4>Order Management</h4>
            <ul class="list-unstyled">
                <li><g:link controller="order" action="lock" name="Lock All Open Orders">Lock All Open Orders</g:link></li>
            </ul>
        </div>
    </div>
</body>
</html>
