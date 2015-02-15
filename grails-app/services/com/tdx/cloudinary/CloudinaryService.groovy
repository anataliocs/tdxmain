package com.tdx.cloudinary

import com.cloudinary.*
import grails.transaction.Transactional

import javax.annotation.PostConstruct

@Transactional
class CloudinaryService {

    def grailsApplication

    @PostConstruct
    void init() {
        String test = ""
    }

    def uploadImgByUrl(String imgUrl) {

        Cloudinary cloudinary = new Cloudinary(Cloudinary.asMap(
                "cloud_name", (java.lang.String) grailsApplication.config.grails.tdx.cloudinary.name,
                "api_key", (java.lang.String) grailsApplication.config.grails.tdx.cloudinary.api,
                "api_secret", (java.lang.String) grailsApplication.config.grails.tdx.cloudinary.secret));

        Map uploadResult = cloudinary.uploader().upload(imgUrl, new HashMap());


        return uploadResult.get("secure_url")
    }
}
