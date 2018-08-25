package com.TravelAgency.controller;

import com.TravelAgency.MyUserDetails;
import com.TravelAgency.dao.*;
import com.TravelAgency.dto.RegisterDTO;
import com.TravelAgency.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * Created by Marcin on 17.04.2018.
 */

@Controller
public class MainController {


    @Autowired
    DaneUzytkownikaDAO daneUzytkownikaDAO;

    @Autowired
    OfertyDAO ofertyDAO;

    @Autowired
    RezerwacjaDAO rezerwacjaDAO;

    @Autowired
    RezerwacjeUzytkownikaDAO rezerwacjaDAOtest;

    @Autowired
    ZakupyDAO zakupyDAO;

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    MyUserDetails daneUyztkownika;

    @RequestMapping(value = {"/", "/home"})
    public String home(Model model){
        List<oferty> listaDatabase =  ofertyDAO.findAllOfferts();

        List<oferty> listaRandom = new ArrayList<>();

        Random generator = new Random();

        if(listaDatabase.size() > 3) {
            for (;;) {
                int randomValue = generator.nextInt(listaDatabase.size());

                oferty losowaOferta = listaDatabase.get(randomValue);

                if(listaRandom.size() == 0){
                    listaRandom.add(losowaOferta);
                } else {
                    for (int i = 0; i < listaRandom.size(); i++) {
                        if (listaRandom.get(i).getId() == losowaOferta.getId()) {
                            break;
                        }

                        if (i == listaRandom.size() - 1) {
                            listaRandom.add(losowaOferta);
                            break;
                        }
                    }
                }

                if(listaRandom.size() == 3) {
                    break;
                }

            }
        } else {
            listaRandom.addAll(listaDatabase);
        }

        model.addAttribute("listaOfert", listaRandom);

        return "home";
    }

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

            daneUzytkownikaDAO.save(dane);
            return "redirect:/";
        }
    }

    @RequestMapping("/login")
    public String login(){
        return "login";
    }

    @RequestMapping("/album")
    public String album(Model model){
            List<oferty> lista =  ofertyDAO.findAllOfferts();
          model.addAttribute("listaOfert", lista);
          model.addAttribute("search_type", "normal");

        return "album";
    }

    @RequestMapping("/last_minute")
    public String albumLastMinute(Model model){
        List<oferty> lista =  ofertyDAO.findAllOffertsLastMinute();
        model.addAttribute("listaOfert", lista);
        model.addAttribute("search_type", "last_minute");

        return "album";
    }

    @RequestMapping("/search")
    public String albumSearch(Model model, @RequestParam(value = "input_search", defaultValue = "") String inputSearch,
                              @RequestParam(value = "hidden_search_type", defaultValue = "") String hiddenSearchType){
      /*  System.out.println("#### inputSearch=" +  inputSearch);*/

        List<oferty> lista = null;

        System.out.println("####hiddenSearchType" + hiddenSearchType);


        lista =  ofertyDAO.findSearch(inputSearch, hiddenSearchType);


        model.addAttribute("listaOfert", lista);
        model.addAttribute("search_type", hiddenSearchType);

        return "album";
    }
//    @RequestMapping("/about")
//    public String about(){return "about";}

    @RequestMapping("/opinions")
    public String opinions(){return "opinions";}

    @RequestMapping("/contact")
    public String contact(){return "contact";}

    @RequestMapping("/user_reservations")
    public String userReservations( Model model){
//        List<rezerwacje> rezerwacjeList = rezerwacjaDAO.userReservations(Integer.toString(daneUyztkownika.getUserData().getId()));

        List<RezerwacjeUzytkownika> rezerwacjeList = rezerwacjaDAOtest.userReservations(Integer.toString(daneUyztkownika.getUserData().getId()));
        List<ZamowieniaUzytkownika> zamowieniaList = rezerwacjaDAOtest.userOrders(Integer.toString(daneUyztkownika.getUserData().getId()));

        model.addAttribute("rezerwacje", rezerwacjeList);
        model.addAttribute("zamowienia", zamowieniaList);

        return "user_reservations";
    }

    @RequestMapping("/offer")  /// @RequestParm wymaga użycie pewnych parametrów
    public String offer1(@RequestParam(name = "id", defaultValue = "0", required = false)String ofertaId, Model model){
        System.out.println("#### oferta_id=" + ofertaId);
        int ofertaIdNumber = 0;
        try{
            ofertaIdNumber = Integer.parseInt(ofertaId);
        }catch(NumberFormatException ex){
            ex.printStackTrace();
        }
        oferty of = ofertyDAO.get(ofertaIdNumber);
        model.addAttribute("offerAtrr", of);
        return "offer";
    }


    @RequestMapping(value = "/addReservation")
    public String addReservation(@RequestParam(name = "id", defaultValue = "0", required = false)String ofertaId, Model model){
        System.out.println("#### addReservation id=" + ofertaId);
        System.out.println("#### id zalogowanego uzytkownika=" + daneUyztkownika.getUserData().getId());
        rezerwacje rez = new rezerwacje();
        rez.setData_rezerwacji(new Date(System.currentTimeMillis()));
        rez.setOferta_id(ofertaId);
        rez.setUzytkownik_id(daneUyztkownika.getUserData().getId().toString());
        rez.setId(0);

//        data_od > current_date() and data_od <= current_date() + 7

        int ofertaIdNumber = 0;
        try{
            ofertaIdNumber = Integer.parseInt(ofertaId);
        }catch(NumberFormatException ex){
            ex.printStackTrace();
        }

        oferty of = ofertyDAO.get(ofertaIdNumber);

        LocalDate localDate = LocalDate.now().plusDays(7);
        LocalDate dataOdOferty = of.getData_od().toLocalDate();
        System.out.println("localDate=" + localDate);
        System.out.println("dataOdOferty=" + dataOdOferty);
        if(dataOdOferty.compareTo(localDate) <= 0){
            model.addAttribute("addReservationInfo1", "Nie można dodać rezerwacji, ponieważ jest to oferta last minute");
            model.addAttribute("addReservationInfo2", "false");
        } else if(rezerwacjaDAO.getRezerwacja(ofertaId, daneUyztkownika.getUserData().getId().toString()) == 0) {
            rezerwacjaDAO.save(rez);
            model.addAttribute("addReservationInfo1", "Rezerwacja została dodana pomyślnie");
            model.addAttribute("addReservationInfo2", "true");
        } else {
            model.addAttribute("addReservationInfo1", "Nie można dodać rezerwacji, ponieważ istnieje juz ona w bazie danych");
            model.addAttribute("addReservationInfo2", "false");
        }

        model.addAttribute("offerAtrr", of);

        return "offer";

    }
    @RequestMapping("/addPurchase")
    public String addPurchase(@RequestParam(name = "id", defaultValue = "0", required = false)String ofertaId, Model model){
        System.out.println("#### addPurchase id=" + ofertaId);
        System.out.println("#### id zalogowanego uzytkownika=" + daneUyztkownika.getUserData().getId());
        zakupy zak = new zakupy();
        zak.setId(0);
        zak.setData_zakupu(new Date(System.currentTimeMillis()));
        zak.setUzytkownik_id(daneUyztkownika.getUserData().getId().toString());
        zak.setOferta_id(ofertaId);


        if(zakupyDAO.getZakupy(ofertaId, daneUyztkownika.getUserData().getId().toString()) == 0) {
            zakupyDAO.save(zak);
            model.addAttribute("addReservationInfo1","Zakupiłeś oferte pomyślnie");
            model.addAttribute("addReservationInfo2","true");
        } else {
            model.addAttribute("addReservationInfo1","Już zamówiłeś wybraną ofertę");
            model.addAttribute("addReservationInfo2","false");
        }

        int ofertaIdNumber = 0;
        try{
            ofertaIdNumber = Integer.parseInt(ofertaId);
        }catch(NumberFormatException ex){
            ex.printStackTrace();
        }
        oferty of = ofertyDAO.get(ofertaIdNumber);
        model.addAttribute("offerAtrr", of);

        return "offer";
    }
}