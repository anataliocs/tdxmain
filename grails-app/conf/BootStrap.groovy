import com.tdx.Announcement
import com.tdx.AnnouncementTypeEnum
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
            new UserDonationLevel(firstName: 'Chris', lastName: 'Test1', stormpathEmail: 'test@gmail.com').save(failOnError: true, flush: true)
            new UserDonationLevel(firstName: 'Nick', lastName: 'Betts', stormpathEmail: '123asd2').save(failOnError: true, flush: true)
            new UserDonationLevel(firstName: 'Russ', lastName: 'Lawerence', stormpathEmail: '123asd3').save(failOnError: true, flush: true)

            new Announcement(type: AnnouncementTypeEnum.RECOLONIZATION, stormpathEmail: "test@gmail.com", text: "Welcome!!!", created: new Date()).save(failOnError: true, flush: true)
        }
    }
    def destroy = {
    }
}
