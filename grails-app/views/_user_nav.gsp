<li><g:link class="hyperlink" controller="vendor" action="index">Vendor List</g:link></li>
<g:each in="${com.toastcoders.openorder.cart.Category.findAllWhere(isPrimary: true)}" >
    <li><g:link class="hyperlink" controller="category" action="show" id="${it.id}">${it.name}</g:link></li>
</g:each>
