import com.toastcoders.openorder.Customer
import com.toastcoders.openorder.CustomerRole
import com.toastcoders.openorder.Role
import com.toastcoders.openorder.cart.Cart
import com.toastcoders.openorder.cart.Category
import com.toastcoders.openorder.cart.Item
import com.toastcoders.openorder.cart.Vendor

class BootStrap {

    def init = { servletContext ->
        def adminRole = new Role('ROLE_ADMIN').save()
        def userRole = new Role('ROLE_USER').save()

        def testUser = new Customer('me', 'password')
        testUser.accountExpired = false
        testUser.accountLocked = false
        testUser.enabled = true
        testUser.passwordExpired = false

//        Cart cart = new Cart()
//        testUser.cart = cart

        testUser.save()

        CustomerRole.create testUser, adminRole, true

        assert Customer.count() == 1
        assert Role.count() == 2
        assert CustomerRole.count() == 1

        Vendor vendor = new Vendor()
        vendor.name = "Good Vendor"
        vendor.description = "This is a great vendor"
        vendor.email = "me@you.com"
        vendor.phoneNumber = "5551212"
        vendor.website = "http://site.com/"
        vendor.save()

        Category category = new Category(name: "Dairy", isPrimary: true)
        category.save()

        Item item = new Item(name: "milk", vendor: vendor, category: category, price: 5)
        item.save()
    }
    def destroy = {
    }
}
