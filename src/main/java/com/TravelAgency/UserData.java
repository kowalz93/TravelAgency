package com.TravelAgency;

import com.TravelAgency.entity.dane_uzytkownika;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * Created by Marcin on 17.05.2018.
 */
public class UserData implements UserDetails {
    private dane_uzytkownika user;

    public UserData(dane_uzytkownika user) {
        this.user = user;
    }

    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<SimpleGrantedAuthority> auth = new ArrayList<SimpleGrantedAuthority>();
        auth.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
        auth.add(new SimpleGrantedAuthority("ROLE_USER"));
        return auth;
    }

    public String getPassword() {
        return user.getHaslo();
    }

    public String getUsername() {
        return user.getLogin();
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

    public dane_uzytkownika getUser(){
        return user;
    }
}
