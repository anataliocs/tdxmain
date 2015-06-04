package com.tdx

import grails.plugin.springsecurity.annotation.Secured

class AdminController {

    @Secured(['ROLE_USER'])
    def index() {
        [announcementTypeList: AnnouncementTypeEnum.getAllAnnouncementTypeEnumList()]
    }
}
