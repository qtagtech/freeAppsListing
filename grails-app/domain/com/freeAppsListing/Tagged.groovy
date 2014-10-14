package com.freeAppsListing

import org.bson.types.ObjectId

class Tagged {

    static belongsTo = [app: Application, tag: Tag]
    ObjectId id
    Date dateCreated
    Date lastUpdated

    static constraints = {
    }
    String toString(){
        tag.name + " - " + app.name
    }
    static mapWith = "mongo"
}
