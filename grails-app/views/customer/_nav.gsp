<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <g:link class="navbar-brand">${grailsApplication.config.siteName}</g:link>
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="navbar-collapse collapse" id="navbar-main">
            <ul class="nav navbar-nav">
                <li><a class="hyperlink" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="hyperlink" controller="customer" action="create"><g:message code="default.new.label"
                                                                         args="[entityName]"/></g:link></li>
            </ul>
        </div>
    </div>
</nav>
