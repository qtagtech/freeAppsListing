package com.freeAppsListing

import org.bson.types.ObjectId
//this class overrides the ones put by the city's in case the user edits them
class Settings {
    static belongsTo = [company:Company]
    ObjectId id
    String currencyName
    String currencyCode
    String timeZone
    String internetDomain


    static constraints = {
    }
    static mapWith = "mongo"
}
