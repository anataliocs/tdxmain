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

        udl.firstName = "test1234"
        udl.lastName = "test111"
        udl.stormpathLink = "link"

        UserDonation ud = new UserDonation()

        ud.amount = Integer.parseInt(params.donationAmount)
        ud.donationType = DonationTypeEnum.RECOLONIZATION
        ud.date = new Date()
        ud.save()

        Set<UserDonation> donationList = new HashSet<UserDonation>()
        donationList.add(ud)

        udl.donation = donationList

        udl.save()

        redirect(action: "index")
    }
}
