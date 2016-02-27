package com.toastcoders.openorder.cart

class Vendor {

    String name
    String description
    String email
    String phoneNumber
    String website
    boolean showContactInfoToUser

    static hasMany = [items: Item]

    static constraints = {
        email email: true
        phoneNumber nullable: true
        website nullable: true
        email nullable: true
    }

    static mapping = {
        sort "name"
        items sort: "name"
        showContactInfoToUser defaultValue: false
        description type: "text"
    }
}
