package com.basistech.basis.webapp.security;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import java.util.HashSet;
import java.util.Collection;

public class CustomUserDetails implements UserDetails {





    private Collection<GrantedAuthority> authorities = new HashSet<GrantedAuthority>();
    private String password;
    private String username;

    public CustomUserDetails(String username, String password, Collection<GrantedAuthority> authorities){
        this.username = username;
        this.password = password;
        this.authorities = authorities;

    }

    public Collection getAuthorities() {
        return this.authorities;
    }

    public String getPassword() {
        return this.password;
    }

    public String getUsername() {
        return this.username;
    }

    public boolean isAccountNonExpired() {
        return true;
    }

    public boolean isAccountNonLocked() {
        return true;
    }

    public boolean isCredentialsNonExpired() {
        return true;
    }

    public boolean isEnabled() {
        return true;
    }

}
