package com.toastcoders.openorder.cart

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN"])
class ReportsController {

    def index() {}
}
