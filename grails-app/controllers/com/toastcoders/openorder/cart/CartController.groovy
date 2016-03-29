package com.toastcoders.openorder.cart

import com.toastcoders.openorder.CartService
import grails.plugin.springsecurity.annotation.Secured


@Secured(['IS_AUTHENTICATED_FULLY'])
class CartController {

    CartService cartService

    def index() {
        redirect(action: "show")
    }

    def update() {
        int itemId = params.itemId as int
        int itemQuant = params.value as int
        if (itemQuant.toInteger() == 0) {
            CartItem item = CartItem.get(itemId)
            item.delete(flush: true)
            redirect(controller: "cart", action: "show")
            return
        }
        cartService.setItemQuantInCart(itemId, itemQuant)
        redirect(action: "show")
    }

    def create() {
        def hasCart = cartService.verifyCart()
        if (hasCart) {
            render "I have a cart already"
            return
        }
        def stat = cartService.addCart()
        render stat
    }

    def empty() {
        def hasCart = cartService.verifyCart()
        if (hasCart) {
            cartService.emptyCart()
            return
        }
    }

    def show() {
        if (!cartService.verifyCart()) {
            cartService.addCart()
        }
        return ["items": cartService.getCartItems()]
    }

    def addItem() {
        def itemId = params.get("id") as int
        if (!cartService.verifyCart()) {
            cartService.addCart()
        }
        cartService.addItemToCart(itemId)
        return
    }

    def removeItem() {
        def itemId = params.get("id") as int
        CartItem item = CartItem.get(itemId)
        item.delete(flush: true)
        redirect(controller: "cart", action: "show")
    }
}
