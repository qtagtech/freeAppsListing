package com.freeAppsListing

import org.bson.types.ObjectId

class Plan {
    static hasMany = [eventPrices: PriceInPlan]
    ObjectId id
    String name
    String description
    double price
    Date dateCreated
    Date lastUpdated

    static constraints = {
        name()
        description()
        price()
    }
    static mapping = {
        description type: 'text'
    }
    String toString(){
        name
    }

    static mapWith = "mongo"
}
