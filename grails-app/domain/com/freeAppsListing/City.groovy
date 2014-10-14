package com.freeAppsListing

import org.bson.types.ObjectId

class City {
    static belongsTo = [country: Country]
    ObjectId id
    String name
    String code
    String region
    String longitude
    String latitude
    String currencyName
    String currencyCode
    String timeZone
    String internetDomain
    Date dateCreated
    Date lastUpdated

    static constraints = {
    }
    static mapWith = "mongo"

    String toString(){
        "("+country+") - "+ region + " / "+ name
    }
}
