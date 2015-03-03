package com.tdx

class UserDonation {

    Integer amount
    Date date
    DonationTypeEnum donationType

    static belongsTo = [donationLevel: UserDonationLevel]

    static constraints = {
    }
}
