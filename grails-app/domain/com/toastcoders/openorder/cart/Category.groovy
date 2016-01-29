package com.toastcoders.openorder.cart

class Category {

    String name
    static hasMany = [subCategories: Category, items: Item]
    static belongsTo = [parentCategory: Category]
    static constraints = {
        parentCategory nullable: true
    }
}
