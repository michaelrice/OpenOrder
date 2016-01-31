package com.toastcoders.openorder.cart

class Item {

    String name
    String description
    int quantity
    float cost
    float price
    boolean isOnSale
    float salePrice
    boolean splitable
    boolean featuredItem
    int orderLimit
    String thumbnailImage
    String fullsizeImage
    String medsizeImage
    static belongsTo = [category: Category, vendor: Vendor, cart: Cart]
    static constraints = {
        name nullable:false, blank:false, unique:['cart']
        thumbnailImage nullable: true
        fullsizeImage nullable: true
        medsizeImage nullable: true
        description nullable: true
        cart nullable: true
    }

    static mapping = {
        isOnSale defaultValue: false
        splitable defaultValue: false
        featuredItem defaultValue: false
        quantity defaultValue: 1
        orderLimit defaultValue: 0
        sort "name"
        sort "price"
        sort "quantity"
        description type: "text"
        cost defaultVale: 0
        price defaultValue: 0
        salePrice defaultValue: 0
    }
}
