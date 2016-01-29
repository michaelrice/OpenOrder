package com.toastcoders.openorder

import grails.gorm.DetachedCriteria
import groovy.transform.ToString

import org.apache.commons.lang.builder.HashCodeBuilder

@ToString(cache = true, includeNames = true, includePackage = false)
class CustomerRole implements Serializable {

    private static final long serialVersionUID = 1

    Customer customer
    Role role

    CustomerRole(Customer u, Role r) {
        this()
        customer = u
        role = r
    }

    @Override
    boolean equals(other) {
        if (!(other instanceof CustomerRole)) {
            return false
        }

        other.customer?.id == customer?.id && other.role?.id == role?.id
    }

    @Override
    int hashCode() {
        def builder = new HashCodeBuilder()
        if (customer) {
            builder.append(customer.id)
        }
        if (role) {
            builder.append(role.id)
        }
        builder.toHashCode()
    }

    static CustomerRole get(long customerId, long roleId) {
        criteriaFor(customerId, roleId).get()
    }

    static boolean exists(long customerId, long roleId) {
        criteriaFor(customerId, roleId).count()
    }

    private static DetachedCriteria criteriaFor(long customerId, long roleId) {
        CustomerRole.where {
            customer == Customer.load(customerId) &&
                role == Role.load(roleId)
        }
    }

    static CustomerRole create(Customer customer, Role role, boolean flush = false) {
        def instance = new CustomerRole(customer: customer, role: role)
        instance.save(flush: flush, insert: true)
        instance
    }

    static boolean remove(Customer u, Role r, boolean flush = false) {
        if (u == null || r == null) {
            return false
        }

        int rowCount = CustomerRole.where { customer == u && role == r }.deleteAll()

        if (flush) {
            CustomerRole.withSession { it.flush() }
        }

        rowCount
    }

    static void removeAll(Customer u, boolean flush = false) {
        if (u == null) {
            return
        }

        CustomerRole.where { customer == u }.deleteAll()

        if (flush) {
            CustomerRole.withSession { it.flush() }
        }
    }

    static void removeAll(Role r, boolean flush = false) {
        if (r == null) {
            return
        }

        CustomerRole.where { role == r }.deleteAll()

        if (flush) {
            CustomerRole.withSession { it.flush() }
        }
    }

    static constraints = {
        role validator: { Role r, CustomerRole ur ->
            if (ur.customer == null || ur.customer.id == null) {
                return
            }
            boolean existing = false
            CustomerRole.withNewSession {
                existing = CustomerRole.exists(ur.customer.id, r.id)
            }
            if (existing) {
                return 'userRole.exists'
            }
        }
    }

    static mapping = {
        id composite: ['customer', 'role']
        version false
    }
}
