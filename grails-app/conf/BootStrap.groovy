import com.tdx.Role
import com.tdx.UserDonationLevel
import grails.util.Environment

class BootStrap {

    def init = { servletContext ->

        def currentEnv = Environment.current

        new Role(authority: 'ROLE_USER').save(failOnError: true, flush: true)
        new Role(authority: 'ROLE_FACEBOOK').save(failOnError: true, flush: true)
        new Role(authority: 'ROLE_EXAMPLE').save(failOnError: true, flush: true)



        if (currentEnv == Environment.DEVELOPMENT || currentEnv == Environment.TEST) {
            // Place holder donations
            new UserDonationLevel(firstName: 'Chris', lastName: 'Anatalio', stormpathLink: '123asd').save(failOnError: true, flush: true)
            new UserDonationLevel(firstName: 'Nick', lastName: 'Betts', stormpathLink: '123asd2').save(failOnError: true, flush: true)
            new UserDonationLevel(firstName: 'Russ', lastName: 'Lawerence', stormpathLink: '123asd3').save(failOnError: true, flush: true)
        }
    }
    def destroy = {
    }
}
