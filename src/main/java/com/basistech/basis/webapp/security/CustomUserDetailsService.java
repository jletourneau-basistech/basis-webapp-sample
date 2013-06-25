package com.basistech.basis.webapp.security;

import org.springframework.beans.factory.annotation.Autowire;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import java.util.HashSet;
import java.util.HashMap;

@Component
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    TokenStore tokenStore;

    // just to emulate user data and credentials retrieval from a DB, or authentication service
    private static HashMap<String, UserDetails> userRepository = new HashMap<String, UserDetails>();

    static{
        GrantedAuthority authorityUser = new GrantedAuthorityImpl("ROLE_USER");

        HashSet<GrantedAuthority> authorities1 = new HashSet<GrantedAuthority>();
        authorities1.add(authorityUser);
        CustomUserDetails user1 = new CustomUserDetails("admin", "admin", authorities1);
        userRepository.put("admin", user1);

    }

    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserDetails matchingUser = userRepository.get(username);

        tokenStore.generateTokenForUserId(username);

        if(matchingUser == null){
            throw new UsernameNotFoundException("Wrong username or password");
        }

        return matchingUser;
    }



}
