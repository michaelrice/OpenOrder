package com.toastcoders.openorder.cart

import com.toastcoders.openorder.CartService
import com.toastcoders.openorder.Customer
import com.toastcoders.openorder.OrderService
import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured

@Secured(['IS_AUTHENTICATED_FULLY'])
class OrderController {

    OrderService orderService
    CartService cartService

    def submit() {
        def output = orderService.createPurchaseOrder()
        cartService.emptyCart()
        chain(action: "complete", model: [output: output])
    }

    def view() {
        def orderId = params?.id as Integer
        if (orderId) {
            // show info about a specific order
            return [orders: orderService.getOrder(orderId)]
        }
        // return a list of all orders
        return [orders: orderService.getAllOrders()]
    }

    def complete() {
        [message: "Complete"]
    }

    @Secured(["ROLE_ADMIN"])
    def lock() {
        orderService.lockAllOrders()
        redirect(controller: "index", action: "admin")
    }
}
