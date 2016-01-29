package com.toastcoders.openorder

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode(includes = 'username')
@ToString(includes = 'username', includeNames = true, includePackage = false)
class Customer implements Serializable {

    private static final long serialVersionUID = 1

    transient springSecurityService

    String username
    String password
    String firstName
    String lastName
    String city
    String state
    String address
    String primaryPhoneNumber
    String secondaryPhoneNumber
    String primaryEmail
    String secondaryEmail
    boolean enabled
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired

    Customer(String username, String password) {
        this()
        this.username = username
        this.password = password
    }

    Set<Role> getAuthorities() {
        CustomerRole.findAllByCustomer(this)*.role
    }

    def beforeInsert() {
        encodePassword()
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            encodePassword()
        }
    }

    protected void encodePassword() {
        password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
    }

    static transients = ['springSecurityService']

    static constraints = {
        username blank: false, unique: true
        password blank: false
        firstName nullable: true
        lastName nullable: true
        city nullable: true
        state nullable: true
        address nullable: true
        primaryPhoneNumber nullable: true
        secondaryPhoneNumber nullable: true
        primaryEmail nullable: true
        secondaryEmail nullable: true
    }

    static mapping = {
        password column: '`password`'
        enabled defaultValue: true
    }

    public String getFullName() {
        return "${this.firstName} ${this.lastName}"
    }
}
