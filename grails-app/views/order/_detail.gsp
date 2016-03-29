<h2>Order ${order.id} -- ${order.dateCreated} -- ${order.lastUpdated} -- ${order.isLocked}</h2>
<table class="table-bordered">

    <thead>
    <tr>
        <th>Name</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Total</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${order.purchaseOrderItems}" var="item">
        <tr>
            <td><span>${item.name}</span></td>
            <td><span>${formatNumber(number: ((item.isOnSale) ? item.salePrice : item.price), type: "currency", currencyCode:"USD")}</span></td>
            <td class="text-justify"><span>${item.quantity}</span></td>
            <td><span>${formatNumber(number: item.getItemTotal(), type: "currency", currencyCode:"USD")}</span></td>
            <td></td>

        </tr>
    </g:each>
    <tr>
        <td></td>
        <td></td>
        <td>Total: </td>
        <td>${formatNumber(number: order.purchaseOrderItems.sum {it.getItemTotal()}, type: "currency", currencyCode:"USD")}</td>
        <td></td>
    </tr>
    </tbody>
</table>
