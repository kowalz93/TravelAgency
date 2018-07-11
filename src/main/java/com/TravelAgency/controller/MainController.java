package com.TravelAgency.controller;

import com.TravelAgency.MyUserDetails;
import com.TravelAgency.UserData;
import com.TravelAgency.dao.DaneUzytkownikaDAO;
import com.TravelAgency.dao.OfertyDAO;
import com.TravelAgency.dao.RezerwacjaDAO;
import com.TravelAgency.dao.ZakupyDAO;
import com.TravelAgency.dto.RegisterDTO;
import com.TravelAgency.entity.dane_uzytkownika;
import com.TravelAgency.entity.oferty;
import com.TravelAgency.entity.rezerwacje;
import com.TravelAgency.entity.zakupy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.sql.Date;
import java.util.List;

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
    RezerwacjaDAO rezerwacjaDAO;

    @Autowired
    ZakupyDAO zakupyDAO;

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    MyUserDetails daneUyztkownika;

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

    @RequestMapping("/album")
    public String album(Model model){
            List<oferty> lista =  ofertyDAO.findAllOfferts();
          model.addAttribute("listaOfert", lista);

        return "album";
    }

    @RequestMapping("/last_minute")
    public String albumLastMinute(Model model){
        List<oferty> lista =  ofertyDAO.findAllOffertsLastMinute();
        model.addAttribute("listaOfert", lista);

        return "album";
    }

    @RequestMapping("/search")
    public String albumSearch(Model model, @RequestParam(value = "input_search", defaultValue = "") String inputSearch){
      /*  System.out.println("#### inputSearch=" +  inputSearch);*/

        List<oferty> lista = null;

        if(inputSearch.equals("")){
            lista =  ofertyDAO.findAllOfferts();
        } else {
            lista =  ofertyDAO.findSearch(inputSearch);
        }

        model.addAttribute("listaOfert", lista);

        return "album";
    }

    @RequestMapping("/user_profile")
    public String userProfile(){return "user_profile";}

    @RequestMapping("/about")
    public String about(){return "about";}

    @RequestMapping("/opinions")
    public String opinions(){return "opinions";}

    @RequestMapping("/contact")
    public String contact(){return "contact";}

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


        if(rezerwacjaDAO.getRezerwacja(ofertaId, daneUyztkownika.getUserData().getId().toString()) == 0) {
            rezerwacjaDAO.save(rez);
            model.addAttribute("addReservationInfo1", "Rezerwacja została dodana pomyślnie");
            model.addAttribute("addReservationInfo2", "true");
        } else {
            model.addAttribute("addReservationInfo1", "Nie można dodać rezerwacji, ponieważ istnieje juz ona w bazie danych");
            model.addAttribute("addReservationInfo2", "false");
        }
        ////// kopia z metody offer
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