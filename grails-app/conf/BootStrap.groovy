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

        def testAdmin = new Customer('me', 'password')
        testAdmin.accountExpired = false
        testAdmin.accountLocked = false
        testAdmin.enabled = true
        testAdmin.passwordExpired = false

        testAdmin.save()

        CustomerRole.create testAdmin, adminRole, true

        def testUser = new Customer('mike', 'password')
        testUser.accountExpired = false
        testUser.accountLocked = false
        testUser.enabled = true
        testUser.passwordExpired = false

        testUser.save()

        CustomerRole.create testUser, userRole, true

        assert Customer.count() == 2
        assert Role.count() == 2
        assert CustomerRole.count() == 2

        Vendor vendor = new Vendor()
        vendor.name = "Good Vendor"
        vendor.description = "This is a great vendor"
        vendor.email = "me@you.com"
        vendor.phoneNumber = "5551212"
        vendor.website = "http://site.com/"
        vendor.save()

        Category category = new Category(name: "Dairy", isPrimary: true)
        category.save()

        Item item = new Item(name: "milk", vendor: vendor, category: category, price: "5.00")
        item.save(failOnError:true)

        Item item2 = new Item(name: "beef", vendor: vendor, category: category, price: "5.22")
        item2.save(failOnError:true)

        Item item3 = new Item(name: "cheese", vendor: vendor, category: category, price: "5.34")
        item3.save(failOnError:true)

        Item item4 = new Item(name: "bread", vendor: vendor, category: category, price: "5.77")
        item4.save(failOnError:true)

        assert Item.count() == 4
    }
    def destroy = {
    }
}
