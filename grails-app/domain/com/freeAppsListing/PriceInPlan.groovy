package com.freeAppsListing

import org.bson.types.ObjectId

class PriceInPlan {

    static belongsTo = [plan: Plan, eventType: EventType]
    ObjectId id
    double value
    java.util.Currency currency

    static constraints = {
        value()
        currency()
    }
    String toString(){
        value
    }
    static mapWith = "mongo"
}
