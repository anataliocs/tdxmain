package com.tdx

import static com.tdx.SubjectsEnum.allSubjectsEnumList

class ContactController {

    def sendGridService


    def index() {

        [contactSelected: 'active', subjectsList: getAllSubjectsEnumList()]
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
