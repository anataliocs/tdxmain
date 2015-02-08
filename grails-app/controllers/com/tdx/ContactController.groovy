package com.tdx

class ContactController {

    def sendGridService


    def index() {

        [contactSelected: 'active', subjectsList: SubjectsEnum.getAllSubjectsEnumList()]
    }

    def sendEmail() {

        Boolean emailSent = sendGridService.sendEmail(params.name, params.email, params.subject, params.message)

        if (emailSent) {
            response.status = 200
            return response
        } else {
            response.status = 500
            return response
        }


    }

}
