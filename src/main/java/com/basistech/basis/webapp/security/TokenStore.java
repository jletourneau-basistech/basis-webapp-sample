package com.basistech.basis.webapp.security;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.UUID;

@Service
public class TokenStore {

    private HashMap<String,String> grantedTokens= new HashMap<String, String>();

    public TokenStore(){

    }

    public String getTokenForUserId(String uid){
        return grantedTokens.get(uid);
    }

    public String generateTokenForUserId(String uid){

        String token = UUID.randomUUID().toString();
        grantedTokens.put(uid,token);
        return token;

    }

}
