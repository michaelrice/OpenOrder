package com.toastcoders.openorder

import grails.plugin.springsecurity.annotation.Secured

@Secured(["IS_AUTHENTICATED_FULLY"])
class IndexController {

    def index() { }

    @Secured(['ROLE_ADMIN'])
    def admin() {}
}
