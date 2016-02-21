package com.toastcoders.openorder.cart

import com.toastcoders.openorder.CartService
import grails.plugin.springsecurity.annotation.Secured


@Secured(['IS_AUTHENTICATED_FULLY'])
class CartController {

    CartService cartService

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
        cartService.addItemToCart(itemId)
        return
    }
}
