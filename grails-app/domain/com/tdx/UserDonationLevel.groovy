package com.tdx

class UserDonationLevel {

    String firstName
    String lastName
    String stormpathLink

    static hasMany = [donation: UserDonation]

    static constraints = {

    }
}
