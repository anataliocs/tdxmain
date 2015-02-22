package com.tdx

import grails.plugin.springsecurity.annotation.Secured

class DonationController {

    @Secured(['ROLE_USER'])
    def index() {

        [donationTypeList: DonationTypeEnum.getAllDonationTypeEnumList()]
    }
}
