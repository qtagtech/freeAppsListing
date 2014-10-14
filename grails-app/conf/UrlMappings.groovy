class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "/serve"(controller: 'conversion',action: 'serve')
        "404"(view: '/page_404')
        "500"(view:'/page_500')
	}
}
