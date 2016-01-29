package com.toastcoders.openorder.cart

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured(['IS_AUTHENTICATED_FULLY'])
@Transactional(readOnly = true)
class VendorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Vendor.list(params), model:[vendorInstanceCount: Vendor.count()]
    }

    def show(Vendor vendorInstance) {
        respond vendorInstance
    }

    @Secured(['ROLE_ADMIN'])
    def create() {
        respond new Vendor(params)
    }

    @Secured(['ROLE_ADMIN'])
    @Transactional
    def save(Vendor vendorInstance) {
        if (vendorInstance == null) {
            notFound()
            return
        }

        if (vendorInstance.hasErrors()) {
            respond vendorInstance.errors, view:'create'
            return
        }

        vendorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'vendor.label', default: 'Vendor'), vendorInstance.id])
                redirect vendorInstance
            }
            '*' { respond vendorInstance, [status: CREATED] }
        }
    }

    @Secured(['ROLE_ADMIN'])
    def edit(Vendor vendorInstance) {
        respond vendorInstance
    }

    @Secured(['ROLE_ADMIN'])
    @Transactional
    def update(Vendor vendorInstance) {
        if (vendorInstance == null) {
            notFound()
            return
        }

        if (vendorInstance.hasErrors()) {
            respond vendorInstance.errors, view:'edit'
            return
        }

        vendorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Vendor.label', default: 'Vendor'), vendorInstance.id])
                redirect vendorInstance
            }
            '*'{ respond vendorInstance, [status: OK] }
        }
    }

    @Secured(['ROLE_ADMIN'])
    @Transactional
    def delete(Vendor vendorInstance) {

        if (vendorInstance == null) {
            notFound()
            return
        }

        vendorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Vendor.label', default: 'Vendor'), vendorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'vendor.label', default: 'Vendor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
