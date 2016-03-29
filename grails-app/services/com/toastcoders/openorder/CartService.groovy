package com.toastcoders.openorder

import com.toastcoders.openorder.cart.Cart
import com.toastcoders.openorder.cart.Item
import com.toastcoders.openorder.cart.CartItem
import grails.transaction.Transactional

@Transactional
class CartService {
    def springSecurityService

    public boolean verifyCart() {
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
        CartItem item
        int itemsInCart = cart.items.size()
        itemsInCart.times {
            item = cart.items.getAt(0)
            cart.removeFromItems(item)
            item.delete()
        }
        customer.save()
    }

    def getCurrentUsersCart() {
        Customer customer = springSecurityService.currentUser
        if (!customer.cart) {
            addCart()
        }
        Cart cart = customer.cart
        return cart
    }

    def getCartItems() {
        Customer customer = springSecurityService.currentUser
        CartItem[] items = customer.cart?.items?.sort {it.name}
        return items
    }

    def addItemToCart(int itemId) {
        Item item = Item.get(itemId)
        Customer customer = springSecurityService.currentUser
        Cart cart = customer.cart
        if (itemInCart(item, cart)) {
            CartItem cartItem = cart.items.find {
                it.name == item.name
            }
            cartItem.quantity++
        }
        else {
            CartItem soldItem = new CartItem(item)
            soldItem.quantity = 1
            cart.addToItems(soldItem)
        }
        cart.save()
        customer.save()
    }

    def setItemQuantInCart(int itemId, int quant) {
        Customer customer = springSecurityService.currentUser
        Cart cart = customer.cart
        CartItem item = cart.items.find { it.id == itemId.toLong() }
        if (quant.toInteger() == 0) {
            // remove item from cart
            item.delete(flush: true)
            return
        }
        item.quantity = quant
        cart.save(flush: true)
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
