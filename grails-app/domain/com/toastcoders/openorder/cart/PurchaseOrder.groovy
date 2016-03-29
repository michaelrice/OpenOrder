package com.toastcoders.openorder.cart

import com.toastcoders.openorder.Customer

class PurchaseOrder {

    Date orderDate
    Date dateCreated
    Date lastUpdated

    boolean isLocked

    static hasMany = [purchaseOrderItems: PurchaseOrderItem]
    static belongsTo = [customer: Customer]

    static constraints = {
    }

    static mapping = {
        isLocked defaultValue: false
        orderDate defaultValue: "now()"
    }
}
