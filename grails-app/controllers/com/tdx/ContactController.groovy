package com.tdx

class ContactController {

    def sendGridService

    def index() {

        [contactSelected: 'active']
    }

    def sendEmail() {


        sendGridService.sendEmail(params.name, params.email, params.subject, params.message)
    }

}
