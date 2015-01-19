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

        /* SEO URL Mappings */
        "/philanthropy/stilleasierthanchemo"(controller: "philanthropy", action: "event")
    }
}
