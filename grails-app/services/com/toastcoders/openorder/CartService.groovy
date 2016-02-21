package com.toastcoders.openorder

import com.toastcoders.openorder.cart.Cart
import com.toastcoders.openorder.cart.Cart
import com.toastcoders.openorder.cart.Item
import com.toastcoders.openorder.cart.SoldItem
import grails.transaction.Transactional

@Transactional
class CartService {
    def springSecurityService

    def verifyCart() {
        Customer customer = springSecurityService.currentUser

        if (!customer) {
            return false
        }

        if (customer?.cart) {
            return true
        }

        return false
    }

    def addCart() {
        Customer customer = springSecurityService.currentUser
        customer.cart = new Cart()
        customer.save(flush: true)
    }

    def emptyCart() {
        Customer customer = springSecurityService.currentUser
        Cart cart = customer.cart
        cart.items.each { item ->
            cart.removeFromItems(item)
            item.delete()
        }
        customer.save()
    }

    def getCartItems() {
        Customer customer = springSecurityService.currentUser
        SoldItem[] items = customer.cart?.items
        return items
    }

    def addItemToCart(int itemId) {
        Item item = Item.get(itemId)
        Customer customer = springSecurityService.currentUser
        Cart cart = customer.cart
        if (itemInCart(item, cart)) {
            SoldItem cartItem = cart.items.find {
                it.name == item.name
            }
            cartItem.quantity++
        }
        else {
            SoldItem soldItem = new SoldItem(item)
            soldItem.quantity = 1
            cart.addToItems(soldItem)
        }
        cart.save()
        customer.save()
    }

    protected static boolean itemInCart(Item item, Cart cart) {
        def res = cart.items.find {
            it.name == item.name
        }
        if (res)
            return true
        false
    }
}
