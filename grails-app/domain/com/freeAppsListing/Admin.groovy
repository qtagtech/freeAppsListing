package com.freeAppsListing

class Admin extends SecUser {
    String name
    String email
    String position
    Date dateCreated
    Date lastUpdated


    static constraints = {
    }

    static mapping = {
        datasource  "trans"
    }
}
