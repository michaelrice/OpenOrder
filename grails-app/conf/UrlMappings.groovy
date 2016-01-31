class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

        "/"(view: "/index/index")
        "/admin"(view: "/index/admin")
        "500"(view: '/error')
    }
}
