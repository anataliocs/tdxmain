package com.tdx

import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured

class HomeController {

    def springSecurityService

    def index() {
        if (SpringSecurityUtils.ifAllGranted('ROLE_USER')) {
            redirect(action: "loggedin")
        }

        [homeSelected: 'active']
    }

    @Secured(['ROLE_USER'])
    def loggedin() {

        //def user = springSecurityService.currentUser

        def donationLevel = UserDonationLevel.findByStormpathEmail("anataliocs@gmail.com")


        [homeSelected: 'active', donor: donationLevel]
    }

    @Secured(['ROLE_USER'])
    def calendar() {
        [calendarSelected: 'active']
    }

    @Secured(['ROLE_USER'])
    def timeline() {

    }

    def facebook() {

    }

    @Secured(['ROLE_USER'])
    def donate() {

    }
}
