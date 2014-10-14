package com.freeAppsListing

import org.bson.types.ObjectId

import javax.crypto.BadPaddingException
import javax.crypto.Cipher
import javax.crypto.IllegalBlockSizeException
import javax.crypto.KeyGenerator
import java.security.InvalidKeyException
import java.security.Key

class Publisher {
    static private String algorithm = "DESede";
    ObjectId id
    Long externalId
    String name
    String username
    String key
    String web
    Date dateCreated
    Date lastUpdated
    /*
    * CONFIGURE MACROS
    *
    * */

    static constraints = {
        name()
        web url: true
        username()
        key()
    }
    String toString(){
        name
    }

    def beforeValidate(){
        externalId = randomNumber() //it gets a random number, if the number already exists in the database the function is going to return 0 so it will cycle the while until it gets a number different from 0L
        while(externalId == 0L){
            externalId = randomNumber()
        }

    }
    private Long randomNumber (){
        def number =  (long) Math.floor(Math.random() * 900000000000L) + 100000000000L
        if(Publisher.findByExternalId(number)){
            return 0L
        }
        return number
    }
    protected String encryptExternalId(Company company){
        Cipher c = Cipher.getInstance(algorithm)
        if(!externalId){
            externalId = randomNumber()
            while(externalId == 0L){
                externalId = randomNumber()
            }
            this.save(flush: true)
        }
        byte[] encrypted = encryptF(this.externalId.toString(),company.loadPrivateKey(),c)
        return encrypted.encodeBase64()
    }
    private static byte[] encryptF(String input,Key pkey,Cipher c) throws InvalidKeyException, BadPaddingException,
            IllegalBlockSizeException {
        c.init(Cipher.ENCRYPT_MODE, pkey);
        byte[] inputBytes = input.getBytes();
        return c.doFinal(inputBytes);
    }





    static mapWith = "mongo"
}
