package com.tdx

import com.stormpath.sdk.account.Account
import com.stormpath.sdk.account.AccountList
import com.stormpath.sdk.directory.CustomData
import org.springframework.security.core.context.SecurityContextHolder

class UserController {

    def stormPathService

    def index() {

    }

    def signup() {}

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


        redirect(action: "profile")
    }

    def resetPassword() {
        stormPathService.resetPassword(params.email)

        flash.successHeader = "Password reset request successful"
        flash.successMsg = "A password request has been sent to your email address on file.  You have 24 hours to use the password reset link.  We use Stormpath for user management."
        redirect(action: "index")
    }

}
