package com.TravelAgency.controller;

import com.TravelAgency.dao.DaneUzytkownikaDAO;
import com.TravelAgency.entity.dane_uzytkownika;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Marcin on 13.03.2018.
 */

@Controller
public class HomeController {

    @Autowired
    DaneUzytkownikaDAO daneDAO;

    @RequestMapping("/")
    public String home(){
        return "home";
    }

    @RequestMapping(path = "/save")
    @ResponseBody
    public String testSaveDAO(){
        dane_uzytkownika dane = new dane_uzytkownika();
        dane.setId(1);
        dane.setLogin("login");
        dane.setAdres("Adres test");
        dane.setE_mail("email@wp.pl");
        dane.setHaslo("haslo");
        dane.setImie("Imie");
        dane.setNazwisko("sdasd");
        dane.setNr_kontaktowy("54884848");
        dane.setPesel("698525698");

        daneDAO.save(dane);

        return "zapisano pomyślnie";
    }

}
