package com.tdx

class UserController {

    def index() {}

    def facebook() {}

    def create() {}

    def edit() {}

    def show() {
        [ users : User.list() ]
    }

    def save() {

        User newUser = new User()

        newUser.username = params.email
        newUser.password = params.password

        newUser.enabled = true
        newUser.accountExpired = false
        newUser.accountLocked = false
        newUser.passwordExpired = false

        UserInfo userInfo = new UserInfo()

        //userInfo.user = newUser.id
        userInfo.firstName = params.firstname
        userInfo.lastName = params.lastname
        userInfo.email = params.email
        userInfo.dob = new Date()

        newUser.save()
        userInfo.save(flush: true)

        /*
        def roleUser = Role.findByAuthority('ROLE_USER')

        UserRole userRole = new UserRole()

        userRole.user = newUser
        userRole.role = roleUser

        userRole.save(flush: true)
        */

        redirect(action: "show")
    }

}
