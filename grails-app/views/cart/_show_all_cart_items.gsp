<ul class="list-unstyled">
    <g:each in="${items}" var="item" >
        <li>
            <span>Name: ${item.name}</span>
            <span>Quantity: ${item.quantity}</span>
        </li>
    </g:each>
</ul>
