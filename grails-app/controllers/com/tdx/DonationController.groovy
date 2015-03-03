package com.tdx

import grails.plugin.springsecurity.annotation.Secured

class DonationController {

    @Secured(['ROLE_USER'])
    def index() {

        def users = UserDonationLevel.list()

        [donationTypeList: DonationTypeEnum.getAllDonationTypeEnumList(), users: users]
    }

    @Secured(['ROLE_USER'])
    def saveNew() {

        UserDonationLevel udl = new UserDonationLevel()

        udl.firstName = params.firstName
        udl.lastName = params.lastName
        udl.stormpathLink = "link"

        UserDonation ud = new UserDonation()

        ud.amount = Integer.parseInt(params.donationAmount)
        ud.donationType = params.donationType
        ud.date = new Date()

        udl.addToDonation(ud).save()

        redirect(action: "index")
    }
}
