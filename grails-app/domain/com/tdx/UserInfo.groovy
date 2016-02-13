package com.tdx

class UserInfo {

    static belongsTo = [user:User]

    String firstName
    String lastName
    String email
    Date dob
    String location
    String facebookLink
    String facebookImgUrl


    static constraints = {
    }
}
