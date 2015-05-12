package com.tdx

class UserDonationLevel {

    String firstName
    String lastName
    String stormpathEmail

    static hasMany = [donation: UserDonation]

    String getFullName() { return firstName + " " + lastName }

    static constraints = {

    }
}
