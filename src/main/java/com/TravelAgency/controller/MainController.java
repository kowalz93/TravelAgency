package com.TravelAgency.controller;

import com.TravelAgency.dao.DaneUzytkownikaDAO;
import com.TravelAgency.dao.OfertyDAO;
import com.TravelAgency.dto.RegisterDTO;
import com.TravelAgency.entity.dane_uzytkownika;
import com.TravelAgency.entity.oferty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;

/**
 * Created by Marcin on 17.04.2018.
 */
@Controller
public class MainController {

    @Autowired
    DaneUzytkownikaDAO daneDAO;

    @Autowired
    OfertyDAO ofertyDAO;

    @Autowired
    PasswordEncoder passwordEncoder;

    @RequestMapping("/register")
    public String register(@ModelAttribute("form") @Valid RegisterDTO form, BindingResult result){
        if(result.hasErrors()){
            return "register";
        }else{
            dane_uzytkownika dane = new dane_uzytkownika();
            dane.setId(1);
            dane.setLogin(form.getLogin());
            dane.setMiejscowosc(form.getMiejscowosc());
            dane.setKod_pocztowy(form.getKod_pocztowy());
            dane.setUlica(form.getUlica());
            dane.setNr_domu_mieszkania(form.getNr_domu_mieszkania());
            dane.setE_mail(form.getE_mail());

            CharSequence sequence = form.getHaslo();
            dane.setHaslo(passwordEncoder.encode(sequence)); //wykorzystuje SHA-1
            dane.setImie(form.getImie());
            dane.setNazwisko(form.getNazwisko());
            dane.setNr_kontaktowy(form.getNr_kontaktowy());
            dane.setPesel(form.getPesel());

            daneDAO.save(dane);
            return "redirect:/";
        }
    }

    @RequestMapping("/login")
    public String login(){
        return "login";
    }

    @RequestMapping("/oferta1")
    public String oferta1(@RequestParam(name = "id", defaultValue = "0", required = false)String ofertaId, Model model){ ///zabezpieczyć, dokończyć next time..
        System.out.println("#### oferta_id=" + ofertaId);
        oferty of = ofertyDAO.get(Integer.parseInt(ofertaId));
        model.addAttribute("ofertaAtrr", of);

        return "oferta1";
    }
}