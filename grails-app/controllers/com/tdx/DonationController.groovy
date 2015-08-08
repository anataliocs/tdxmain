package com.tdx

import com.stormpath.sdk.account.AccountList
import grails.plugin.springsecurity.annotation.Secured

import static com.tdx.DonationTypeEnum.allDonationTypeEnumList
import static com.tdx.DonorLevelEnum.*

class DonationController {

    def stormPathService

    @Secured(['ROLE_USER'])
    def index() {

        def users = UserDonationLevel.list()

        AccountList accounts = stormPathService.getAllUsers()

        [donationTypeList: getAllDonationTypeEnumList(), users: users, accounts: accounts]
    }

    @Secured(['ROLE_USER'])
    def saveNewUserDonationLevel() {

        //TODO update stormpath link to params.donorLink
        UserDonationLevel udl =
                new UserDonationLevel(
                        firstName: params.firstName,
                        lastName: params.lastName,
                        stormpathEmail: params.donorLink)
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
            udl.stormpathEmail = "link"
        }

        UserDonation ud = new UserDonation()

        ud.amount = params.float("donationAmount").intValue()
        ud.donationType = params.donationType
        ud.date = new Date()

        udl.addToDonation(ud).save(flush: true)


        redirect(action: "index")
    }

    def delete(int id) {
        UserDonation ud = UserDonation.get(id)
        ud.delete(flush: true)

        response.status = 200
    }

    def details(int id) {
        UserDonationLevel udl = UserDonationLevel.get(id)

        [donations: udl.donation]
    }

    def static DonorLevelEnum getDonorLevel(Integer amount) {

        if (amount >= MONROE_PARK_CLUB.threshold && amount < SHAFER_COURT_CLUB.threshold) {
            return MONROE_PARK_CLUB
        } else if (amount >= SHAFER_COURT_CLUB.threshold && amount < FRANKLIN_STREET_CLUB.threshold) {
            return SHAFER_COURT_CLUB
        } else if (amount >= FRANKLIN_STREET_CLUB.threshold && amount < CRAB_TREE_FALLS_SOCIETY.threshold) {
            return FRANKLIN_STREET_CLUB
        } else if (amount >= CRAB_TREE_FALLS_SOCIETY.threshold && amount < BOURBON_CLUB.threshold) {
            return CRAB_TREE_FALLS_SOCIETY
        } else if (amount >= BOURBON_CLUB.threshold && amount < NINETEEN_SEVENTY_CLUB.threshold) {
            return BOURBON_CLUB
        } else if (amount >= NINETEEN_SEVENTY_CLUB.threshold && amount < EXECUTIVE_LOUNGE_SOCIETY.threshold) {
            return NINETEEN_SEVENTY_CLUB
        } else if (amount >= EXECUTIVE_LOUNGE_SOCIETY.threshold && amount < JEFFERSON_FOUNDERS_CIRCLE.threshold) {
            return EXECUTIVE_LOUNGE_SOCIETY
        } else if (amount >= JEFFERSON_FOUNDERS_CIRCLE.threshold && amount < SONS_OF_THE_GERMAN_CLUB.threshold) {
            return JEFFERSON_FOUNDERS_CIRCLE
        } else if (amount >= SONS_OF_THE_GERMAN_CLUB.threshold) {
            return SONS_OF_THE_GERMAN_CLUB
        } else {
            return DonorLevelEnum.NONE
        }
    }

    def static DonorLevelEnum getNextDonorLevel(Integer amount) {

        if (amount >= MONROE_PARK_CLUB.threshold && amount < SHAFER_COURT_CLUB.threshold) {
            return SHAFER_COURT_CLUB
        } else if (amount >= SHAFER_COURT_CLUB.threshold && amount < FRANKLIN_STREET_CLUB.threshold) {
            return FRANKLIN_STREET_CLUB
        } else if (amount >= FRANKLIN_STREET_CLUB.threshold && amount < CRAB_TREE_FALLS_SOCIETY.threshold) {
            return CRAB_TREE_FALLS_SOCIETY
        } else if (amount >= CRAB_TREE_FALLS_SOCIETY.threshold && amount < BOURBON_CLUB.threshold) {
            return BOURBON_CLUB
        } else if (amount >= BOURBON_CLUB.threshold && amount < NINETEEN_SEVENTY_CLUB.threshold) {
            return NINETEEN_SEVENTY_CLUB
        } else if (amount >= NINETEEN_SEVENTY_CLUB.threshold && amount < EXECUTIVE_LOUNGE_SOCIETY.threshold) {
            return EXECUTIVE_LOUNGE_SOCIETY
        } else if (amount >= EXECUTIVE_LOUNGE_SOCIETY.threshold && amount < JEFFERSON_FOUNDERS_CIRCLE.threshold) {
            return JEFFERSON_FOUNDERS_CIRCLE
        } else if (amount >= JEFFERSON_FOUNDERS_CIRCLE.threshold && amount < SONS_OF_THE_GERMAN_CLUB.threshold) {
            return SONS_OF_THE_GERMAN_CLUB
        } else if (amount >= SONS_OF_THE_GERMAN_CLUB.threshold) {
            return DonorLevelEnum.NONE
        } else {
            return MONROE_PARK_CLUB
        }
    }
}
