<li><a href="${grailsApplication.config.grails.serverURL}/admin">Admin Page</a> </li>
<li><g:link class="hyperlink" controller="item" action="index">Products</g:link></li>

<g:each in="${com.toastcoders.openorder.cart.Category.findAllWhere(isPrimary: true)}" >
    <li><g:link class="hyperlink" controller="category" action="show" id="${it.id}">${it.name}</g:link></li>
</g:each>
