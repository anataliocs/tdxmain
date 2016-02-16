package com.tdx

import grails.plugin.springsecurity.annotation.Secured
import org.springframework.security.core.context.SecurityContextHolder

import static com.tdx.Constants.SUCCESS

class UserController {

    def stormPathService

    def springSecurityService

    def index() {

    }

    def signup() {}

    def login() {
        Map status = stormPathService.login(params.username, params.password)

        if (status.get("statusMsg").equalsIgnoreCase(SUCCESS)) {
            flash.successHeader = "Your Account has been Created"
            flash.successMsg = "Welcome to the website for the Theta Delta Chi.  You will need to verify your email account before you can login.  Please check your email for a verification email.  We use Stormpath for user management."
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

    @Secured(['ROLE_USER'])
    def profile() {


    }

    def save() {


        String captchaResponse = "200"

        /*
        def http = new HTTPBuilder('https://www.google.com/recaptcha/api/siteverify')

        http.request(POST) {
            uri.path = ''
            requestContentType = URLENC
            body = [secret: '6Lc6fAITAAAAAJafHeHc5dB9c9tgCXz7ejTMTG_K', response: ""]

            response.success = { resp ->
                println "POST response status: ${resp.statusLine}"
                captchaResponse = resp.statusLine
            }
        }*/

        Map status

        if (captchaResponse.contains("200"))
            status = stormPathService.createUser(params.firstname, params.lastname, params.email, params.password, params.location, params.dob, params.facebookImgUrl, params.facebookLink, params.facebookAuthToken, params.fbid, params.pledgesem, params.pledgeyear)
        else {
            flash.errMsg = status.get("statusMsg")
            redirect(action: "signup", params: status)
        }


        if (status.get("statusMsg").equalsIgnoreCase(SUCCESS)) {
            print "status " + status.get("msg")
            flash.successHeader = "Your Account has been Created"
            flash.successMsg = "Welcome to the website for the Theta Delta Chi.  You will need to verify your email account before you can login.  Please check your email for a verification email.  We use Stormpath for user management."
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
