package com.toastcoders.openorder.cart

class Vendor {

    String name
    String description
    String contactInfo
    boolean showContactInfoToUser

    static hasMany = [items: Item]

    static constraints = {
    }

    static mapping = {
        sort "name"
        items sort: "name"
        showContactInfoToUser defaultValue: false
    }
}
