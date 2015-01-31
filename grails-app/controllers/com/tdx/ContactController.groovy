package com.tdx

class ContactController {

    def sendGridService

    def index() {

        [contactSelected: 'active']
    }

    def sendEmail() {

        Boolean emailSent = sendGridService.sendEmail(params.name, params.email, params.subject, params.message)

        if (emailSent) {
            return [success: true]
        } else {
            return [success: false]
        }


    }

}
