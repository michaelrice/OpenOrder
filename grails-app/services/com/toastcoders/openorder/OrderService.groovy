package com.toastcoders.openorder

import com.toastcoders.openorder.cart.Cart
import com.toastcoders.openorder.cart.PurchaseOrder
import com.toastcoders.openorder.cart.PurchaseOrderItem
import grails.transaction.Transactional

@Transactional
class OrderService {

    def springSecurityService

    def getAllOrders() {
        Customer customer = springSecurityService.currentUser
        return customer.purchaseOrders.sort{
            it.orderDate
        }
    }

    def getOrder(int orderId) {
        Customer customer = springSecurityService.currentUser
        PurchaseOrder po = PurchaseOrder.findById(orderId)
        if (po.customer != customer) {
            return null
        }
        return po
    }

    def createPurchaseOrder() {
        Customer customer = springSecurityService.currentUser
        Cart cart = customer.cart
        PurchaseOrder po = new PurchaseOrder()
        po.customer = customer
        po.orderDate = new Date()
        cart.items.each { cartItem ->
            PurchaseOrderItem poi = new PurchaseOrderItem(cartItem)
            poi.save()
            po.addToPurchaseOrderItems(poi)
        }
        po.save()
        customer.addToPurchaseOrders(po)
        customer.save(flush: true)
        return po
    }

    def lockAllOrders() {
        PurchaseOrder[] pos = PurchaseOrder.findAllWhere([isLocked: false])
        pos.each {
            it.isLocked = true
            it.save()
        }
    }

    def getAdminOrderReport() {
        return PurchaseOrder.all
    }
}
