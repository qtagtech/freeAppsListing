package com.freeAppsListing

import org.bson.types.ObjectId

class Country {
    static hasMany = [cities: City]
    ObjectId id
    String name
    String code
    Date dateCreated
    Date lastUpdated

    static constraints = {
    }
    static mapWith = "mongo"
    String toString(){
        name
    }
}
