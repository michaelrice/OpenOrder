package com.toastcoders.openorder.cart

import com.toastcoders.openorder.Customer

class Cart {

    Date dateCreated
    Date lastUpdated
    static hasMany = [items: SoldItem]
    static belongsTo = [customer: Customer]

    static mapping = {
        items cascade: "all-delete-orphan"
    }

    static constraints = {
        items nullable: true
    }

}
