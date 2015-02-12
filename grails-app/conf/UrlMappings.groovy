class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "home", action: "index")
        "500"(view: '/error')
        "404"(view: '/error')

        "/logout/$action?"(controller: "logout")

        /* SEO URL Mappings */
        "/philanthropy/stilleasierthanchemo"(controller: "philanthropy", action: "event")
    }
}
