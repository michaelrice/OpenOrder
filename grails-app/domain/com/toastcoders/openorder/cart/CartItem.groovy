package com.toastcoders.openorder.cart

class CartItem {

    String name
    int quantity
    BigDecimal cost
    BigDecimal price
    boolean isOnSale
    BigDecimal salePrice

    static belongsTo = [cart: Cart]

    static constraints = {
        cost nullable: true
        cost scale: 2
        price scale: 2
        price nullable: true
        salePrice nullable: true
        salePrice scale: 2
    }

    public CartItem(Item item) {
        name = item.name
        cost = item.cost
        price = item.price
        isOnSale = item.isOnSale
        salePrice = item.salePrice
    }

    public BigDecimal getItemTotal() {
        return isOnSale ? this.quantity * this.salePrice : this.quantity * this.price
    }
}
