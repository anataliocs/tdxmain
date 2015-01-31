package com.tdx

class ContactController {

    def sendGridService

    def index() {

        [contactSelected: 'active']
    }

    def sendEmail() {

        Boolean emailSent = sendGridService.sendEmail(params.name, params.email, params.subject, params.message)

        if (emailSent) {
            flash.message = "Your message has been successfully sent"
        } else {
            flash.error = "There was an error sending your message.  Please try again."
        }
        redirect(action: "index")
    }

}
