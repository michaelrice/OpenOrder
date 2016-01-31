package com.toastcoders.openorder.cart

class SoldItem {

    String name
    int quantity
    float cost
    float price
    boolean isOnSale
    float salePrice

    static constraints = {
    }

    public SoldItem(Item item) {
        item.properties.each {
            if (this.hasProperty(it.key.toString())) {
                this.setProperty(it.key.toString(), it.value.toString())
            }
        }
    }
}
