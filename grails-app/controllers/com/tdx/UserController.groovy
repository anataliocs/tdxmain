package com.tdx

import com.stormpath.sdk.account.Account
import com.stormpath.sdk.account.AccountList
import com.stormpath.sdk.directory.CustomData
import org.springframework.security.core.context.SecurityContextHolder

class UserController {

    def stormPathService

    def signup() {}

    def edit() {}

    def login() {
        stormPathService.login(params.username, params.password)

        print "login attempted"

        redirect(controller: "home", action: "index")
    }

    def logout() {

        SecurityContextHolder.getContext().authentication.setAuthenticated(false);

        redirect(controller: "home", action: "index")
    }

    def profile() {

        AccountList accounts = stormPathService.getUser()
        Account acct
        CustomData customData
        String errMsg

        if (accounts.iterator().size() > 0) {
            acct = accounts.getAt(0)
            customData = acct.getCustomData()
        } else {
            flash.error = " There was an issue retrieving your account info.  Please try refreshing the page."
        }

        [acct: acct, customData: customData]
    }

    def save() {

        stormPathService.createUser(params.firstname, params.lastname, params.email, params.password, params.location, params.dob, params.facebookImgUrl, params.facebookLink)

        /*
        UserInfo userInfo = new UserInfo()
        User newUser = new User(userInfo: userInfo)

        newUser.username = params.email
        newUser.password = params.password

        newUser.enabled = true
        newUser.accountExpired = false
        newUser.accountLocked = false
        newUser.passwordExpired = false

        //userInfo.user = newUser.id
        userInfo.firstName = params.firstname
        userInfo.lastName = params.lastname
        userInfo.email = params.email
        userInfo.facebookLink = params.facebookLink
        userInfo.location = params.location
        userInfo.dob = Date.parse("MM/dd/yyyy", params.dob)
        userInfo.facebookImgUrl = params.facebookImgUrl

        newUser.userInfo = userInfo
        userInfo.user = newUser

        newUser.save(flush: true, failOnError: true)
        userInfo.save(flush: true, failOnError: true)
        */

        /*
        def roleUser = Role.findByAuthority('ROLE_USER')

        UserRole userRole = new UserRole()

        userRole.user = newUser
        userRole.role = roleUser

        userRole.save(flush: true)
        */

        redirect(action: "profile")
    }

}
