        <table class="table">
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
                <g:each in="${items}" var="item" >
                    <tr>
                        <td><span>${item.name}</span></td>
                        <td><span>${formatNumber(number: ((item.isOnSale) ? item.salePrice : item.price), type: "currency", currencyCode:"USD")}</span></td>
                        <td class="text-justify"><span>
                    <g:field
                        maxlength="3"
                        size="3"
                        type="number"
                        value="${item.quantity}"
                        name="num"
                        onchange='${remoteFunction(
                                controller: "cart",
                                action: "update",
                                params: '\'value=\' + escape(this.value)' + "+ \' &itemId=${item.id}\'",
                                update: "show-cart"
                        )}'/>
                        </span></td>
                        <td><span>${formatNumber(number: item.getItemTotal(), type: "currency", currencyCode:"USD")}</span></td>
                        <td><g:link action="removeItem" id="${item.id}" class="hyperlink">Remove Item</g:link></td>

                    </tr>
                </g:each>
            <tr class="tr-tall">
                <td>&nbsp;</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td>Total: </td>
                <td>${formatNumber(number: items.sum {it.getItemTotal()}, type: "currency", currencyCode:"USD")}</td>
                <td></td>
            </tr>
            </tbody>
        </table>
        <g:link name="Checkout" controller="order" action="submit">Checkout</g:link>
