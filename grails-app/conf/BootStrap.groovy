import com.toastcoders.openorder.Customer
import com.toastcoders.openorder.CustomerRole
import com.toastcoders.openorder.Role

class BootStrap {

    def init = { servletContext ->
        def adminRole = new Role('ROLE_ADMIN').save()
        def userRole = new Role('ROLE_USER').save()

        def testUser = new Customer('me', 'password')
        testUser.accountExpired = false
        testUser.accountLocked = false
        testUser.enabled = true
        testUser.passwordExpired = false
        testUser.save()

        CustomerRole.create testUser, adminRole, true

        assert Customer.count() == 1
        assert Role.count() == 2
        assert CustomerRole.count() == 1
    }
    def destroy = {
    }
}
