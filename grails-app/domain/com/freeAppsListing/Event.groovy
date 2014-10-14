package com.freeAppsListing

import org.bson.types.ObjectId

class Event {

    static belongsTo = [eventType: EventType,campaign:Campaign]
    ObjectId id
    Date dateCreated
    Date lastUpdated

    static constraints = {
    }
    static mapping = {

    }

    static mapWith = "mongo"
}
