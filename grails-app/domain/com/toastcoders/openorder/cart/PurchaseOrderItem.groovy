package com.toastcoders.openorder.cart

class PurchaseOrderItem {

    String name
    int quantity
    BigDecimal cost
    BigDecimal price
    boolean isOnSale
    BigDecimal salePrice

    static belongsTo = [purchaseOrder: PurchaseOrder]

    static constraints = {
        cost nullable: true
        cost scale: 2
        price scale: 2
        price nullable: true
        salePrice nullable: true
        salePrice scale: 2
    }

    public PurchaseOrderItem(CartItem item) {
        name = item.name
        cost = item.cost
        price = item.price
        isOnSale = item.isOnSale
        salePrice = item.salePrice
        quantity = item.quantity
    }

    public BigDecimal getItemTotal() {
        return isOnSale ? this.quantity * this.salePrice : this.quantity * this.price
    }
}
