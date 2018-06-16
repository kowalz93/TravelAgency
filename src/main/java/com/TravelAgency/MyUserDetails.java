package com.TravelAgency;

import com.TravelAgency.dao.DaneUzytkownikaDAO;
import com.TravelAgency.entity.dane_uzytkownika;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 * Created by Marcin on 17.05.2018.
 */
public class MyUserDetails implements UserDetailsService {
    @Autowired
    DaneUzytkownikaDAO userDAO;

    @Autowired
    PasswordEncoder passwordEncoder;

    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        dane_uzytkownika user = userDAO.getByUsername(username);

        CharSequence sequence = "haslo";
        System.out.println("$$$ haslo=" +  passwordEncoder.encode(sequence));

        if(user == null) {
            throw new UsernameNotFoundException("Nie znaleziono uzytkownika dla loginu=" + username);
        }

        return new UserData(user);
    }

}
