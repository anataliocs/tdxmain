package com.tdx

import com.stormpath.sdk.account.AccountList
import grails.plugin.springsecurity.annotation.Secured

class DonationController {

    def stormPathService

    @Secured(['ROLE_USER'])
    def index() {

        def users = UserDonationLevel.list()

        AccountList accounts = stormPathService.getAllUsers()

        [donationTypeList: DonationTypeEnum.getAllDonationTypeEnumList(), users: users, accounts: accounts]
    }

    @Secured(['ROLE_USER'])
    def saveNewUserDonationLevel() {

        //TODO update stormpath link to params.donorLink
        UserDonationLevel udl =
                new UserDonationLevel(
                        firstName: params.firstName,
                        lastName: params.lastName,
                        stormpathLink: "fdsfsd")
                        .save(failOnError: true, flush: true)

        response.status = 200
    }

    @Secured(['ROLE_USER'])
    def saveNew() {

        UserDonationLevel udl

        if (params.userDonor) {
            udl = UserDonationLevel.get(params.userDonor)

            print "test " + params.userDonor
        } else if (params.firstName && params.lastName) {
            udl = new UserDonationLevel()

            udl.firstName = params.firstName
            udl.lastName = params.lastName
            //TODO update stormpath link
            udl.stormpathLink = "link"
        }

        UserDonation ud = new UserDonation()

        ud.amount = Integer.parseInt(params.donationAmount)
        ud.donationType = params.donationType
        ud.date = new Date()

        udl.addToDonation(ud).save(flush: true)


        redirect(action: "index")
    }

    def static DonorLevelEnum getDonorLevel(Integer amount) {

        if (amount >= DonorLevelEnum.MONROE_PARK_CLUB.threshold && amount < DonorLevelEnum.SHAFER_COURT_CLUB.threshold) {
            return DonorLevelEnum.MONROE_PARK_CLUB
        } else if (amount >= DonorLevelEnum.SHAFER_COURT_CLUB.threshold && amount < DonorLevelEnum.FRANKLIN_STREET_CLUB.threshold) {
            return DonorLevelEnum.SHAFER_COURT_CLUB
        } else if (amount >= DonorLevelEnum.FRANKLIN_STREET_CLUB.threshold && amount < DonorLevelEnum.CRAB_TREE_FALLS_SOCIETY.threshold) {
            return DonorLevelEnum.FRANKLIN_STREET_CLUB
        } else if (amount >= DonorLevelEnum.CRAB_TREE_FALLS_SOCIETY.threshold && amount < DonorLevelEnum.BOURBON_CLUB.threshold) {
            return DonorLevelEnum.CRAB_TREE_FALLS_SOCIETY
        } else if (amount >= DonorLevelEnum.BOURBON_CLUB.threshold && amount < DonorLevelEnum.NINETEEN_SEVENTY_CLUB.threshold) {
            return DonorLevelEnum.BOURBON_CLUB
        } else if (amount >= DonorLevelEnum.NINETEEN_SEVENTY_CLUB.threshold && amount < DonorLevelEnum.EXECUTIVE_LOUNGE_SOCIETY.threshold) {
            return DonorLevelEnum.NINETEEN_SEVENTY_CLUB
        } else if (amount >= DonorLevelEnum.EXECUTIVE_LOUNGE_SOCIETY.threshold && amount < DonorLevelEnum.JEFFERSON_FOUNDERS_CIRCLE.threshold) {
            return DonorLevelEnum.EXECUTIVE_LOUNGE_SOCIETY
        } else if (amount >= DonorLevelEnum.JEFFERSON_FOUNDERS_CIRCLE.threshold && amount < DonorLevelEnum.SONS_OF_THE_GERMAN_CLUB.threshold) {
            return DonorLevelEnum.JEFFERSON_FOUNDERS_CIRCLE
        } else if (amount >= DonorLevelEnum.SONS_OF_THE_GERMAN_CLUB.threshold) {
            return DonorLevelEnum.SONS_OF_THE_GERMAN_CLUB
        } else {
            return DonorLevelEnum.NONE
        }
    }
}
