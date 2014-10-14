package com.freeAppsListing

import org.bson.types.ObjectId

class SubCategory {
    static belongsTo = [category:groovy.lang.Category]
    static hasMany = [apps: Application]
    ObjectId id
    String name
    String description
    Date dateCreated
    Date lastUpdated


    static constraints = {
        name()
        description()
    }
    static mapping = {
        description type: 'text'
    }
    String toString(){
        name
    }
    static mapWith = "mongo"
}
