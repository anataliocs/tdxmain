package com.tdx

import grails.plugin.springsecurity.annotation.Secured

class HomeController {

    def index() {
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
