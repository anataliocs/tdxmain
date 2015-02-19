package com.tdx

import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured

class HomeController {

    def index() {
        if (SpringSecurityUtils.ifAllGranted('ROLE_USER')) {
            redirect(action: "loggedin")
        }

        [homeSelected: 'active']
    }

    @Secured(['ROLE_USER'])
    def loggedin() {
        [homeSelected: 'active']
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
