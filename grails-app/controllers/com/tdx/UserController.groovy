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
        Map status = stormPathService.login(params.username, params.password)

        if (status.get("statusMsg").equalsIgnoreCase(com.tdx.Constants.SUCCESS)) {
            flash.successHeader = "Your Account has been Created"
            flash.successMsg = "Welcome to the website for the Theta Delta Chi Rho Triton Alumni Association.  You will need to verify your email account before you can login.  Please check your email for a verification email.  We use Stormpath for user management."
            redirect(controller: "home", action: "index")
        } else {
            flash.errMsg = status.get("statusMsg")
            redirect(controller: "home", action: "index", params: status)
        }
    }

    def facebookLogin() {
        stormPathService.facebookLogin(params.accessToken)

        print "login attempted"

        redirect(controller: "home", action: "index")
    }

    def logout() {

        SecurityContextHolder.getContext().authentication.setAuthenticated(false);

        flash.successHeader = "Your have successfully logged out"
        flash.successMsg = "Your account has been created.  You will need to verify your email account before you can login.  Please check your email for a verification email.  We use Stormpath for user management."
        redirect(action: "index")
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

        Map status = stormPathService.createUser(params.firstname, params.lastname, params.email, params.password, params.location, params.dob, params.facebookImgUrl, params.facebookLink, params.facebookAuthToken, params.fbid)

        if (status.get("statusMsg").equalsIgnoreCase(com.tdx.Constants.SUCCESS)) {
            print "status " + status.get("msg")
            flash.successHeader = "Your Account has been Created"
            flash.successMsg = "Welcome to the website for the Theta Delta Chi Rho Triton Alumni Association.  You will need to verify your email account before you can login.  Please check your email for a verification email.  We use Stormpath for user management."
            redirect(action: "index")
        } else {
            flash.errMsg = status.get("statusMsg")
            redirect(action: "signup", params: status)
        }

    }

    def resetPassword() {
        stormPathService.resetPassword(params.email)

        flash.successHeader = "Password reset request successful"
        flash.successMsg = "A password request has been sent to your email address on file.  You have 24 hours to use the password reset link.  We use Stormpath for user management."
        redirect(action: "index")
    }

}
