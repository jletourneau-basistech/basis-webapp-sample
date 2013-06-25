package com.basistech.basis.webapp.security;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.UUID;
import org.springframework.stereotype.Component;

@Component
public class TokenStore {

    private HashMap<String,String> grantedTokens;

    public TokenStore(){

    }

    public String getTokenForUserId(String uid){
        if (grantedTokens==null){
            grantedTokens = new HashMap<String, String>();
            generateTokenForUserId(uid) ;
        }
        return grantedTokens.get(uid);
    }

    public void generateTokenForUserId(String uid){

        String token = UUID.randomUUID().toString();
        grantedTokens.put(uid,token);

    }

}
