package com.tdx

import com.tdx.SubjectsEnum

class ContactController {

    def sendGridService


    def index() {

        [contactSelected: 'active', subjectsList: SubjectsEnum.getAllSubjectsEnumList()]
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
