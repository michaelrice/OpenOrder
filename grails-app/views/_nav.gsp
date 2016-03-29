<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <g:link class="navbar-brand" controller="index" action="index">${grailsApplication.config.siteName}</g:link>
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="navbar-collapse collapse" id="navbar-main">
            <ul class="nav navbar-nav">
                <li><a class="hyperlink" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <g:if test="${grails.plugin.springsecurity.SpringSecurityUtils.ifAnyGranted("ROLE_ADMIN")}">
                    <g:render template="/admin_nav" />
                </g:if>
                <g:else>
                    <g:render template="/user_nav" />
                </g:else>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><g:link class="navbar-link" controller="cart" action="show">Cart</g:link>
                <li><g:link class="navbar-link" controller="logout" action="index">Logout</g:link>
        </div>
    </div>
</nav>
