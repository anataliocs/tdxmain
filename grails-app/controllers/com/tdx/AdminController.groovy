package com.tdx

import grails.plugin.springsecurity.annotation.Secured

import static com.tdx.AnnouncementTypeEnum.allAnnouncementTypeEnumList

class AdminController {

    def springSecurityService

    @Secured(['ROLE_USER'])
    def index() {

        def announcements = Announcement.list(sort: "created", order: "desc")

        [announcementTypeList: getAllAnnouncementTypeEnumList(), announcements: announcements]
    }

    def saveAnnouncement() {

        def principal = springSecurityService.principal

        Announcement announcement = new Announcement();

        announcement.created = new Date()
        announcement.stormpathEmail = principal.email
        announcement.text = params.announcementText
        announcement.type = params.announcementType

        announcement.save()

        redirect(action: "index")
    }
}
