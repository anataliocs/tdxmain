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

        newUser.username = params.username
        newUser.password = params.password

        newUser.enabled = true
        newUser.accountExpired = false
        newUser.accountLocked = false
        newUser.passwordExpired = false

        newUser.save(flush: true)

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
