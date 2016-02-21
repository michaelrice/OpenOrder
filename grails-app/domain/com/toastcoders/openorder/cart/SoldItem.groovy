package com.toastcoders.openorder.cart

class SoldItem {

    String name
    int quantity
    float cost
    float price
    boolean isOnSale
    float salePrice

    static belongsTo = [cart: Cart]

    static constraints = {
    }

    public SoldItem(Item item) {
        name = item.name
        cost = item.cost
        price = item.price
        isOnSale = item.isOnSale
        salePrice = item.salePrice
    }
}
