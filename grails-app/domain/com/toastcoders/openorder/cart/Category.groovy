package com.toastcoders.openorder.cart

class Category {

    String name
    boolean isPrimary
    static hasMany = [subCategories: Category, items: Item]
    static belongsTo = [parentCategory: Category]

    static constraints = {
        parentCategory nullable: true

    }
    static mapping = {
        isPrimary defaultValue: false
    }
}
