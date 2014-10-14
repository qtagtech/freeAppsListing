package com.freeAppsListing

import org.bson.types.ObjectId

class Currency {
    ObjectId id
    static hasMany = [countries: Country]
    String name
    String symbol
    String code
    boolean cents

    static mapWith = "mongo"

    static constraints = {
        name()
        symbol()
        cents()
    }
    String toString(){
        symbol
    }
}
