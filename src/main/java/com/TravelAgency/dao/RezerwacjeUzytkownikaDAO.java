package com.TravelAgency.dao;

import com.TravelAgency.entity.RezerwacjeUzytkownika;
import com.TravelAgency.entity.ZamowieniaUzytkownika;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Marcin on 24.07.2018.
 */
@Repository
@Transactional
public class RezerwacjeUzytkownikaDAO {
    @Autowired
    private SessionFactory sessionFactory;

//    public List<RezerwacjeUzytkownika> userReservations(String uzytkownikID) {
//        Session session = sessionFactory.getCurrentSession();
//        Query query = session.createNativeQuery("select  " +
//                "oferty.id nr_zamowienia, " +
//                "rezerwacje.data_rezerwacji, \n" +
//                "rezerwacje.data_anulowania, \n" +
//                "date_add(oferty.data_od, interval - 7 day) termin_platnosci, " +
//                "oferty.data_od, " +
//                "'' data_zakupu, " +
//                "'rezerwacja' status, " +
//                "oferty.cena\n" +
//                "from oferty join rezerwacje on (oferty.id = rezerwacje.oferta_id)\n" +
//                "where rezerwacje.uzytkownik_id = 9");
////        query.setParameter("uzytkownikID", uzytkownikID);
//
//        List<Object[]> lista = query.getResultList();
//        lista.forEach(l -> System.out.println("getnumer zamowienia=" + l[0]));
//        lista.forEach(l -> System.out.println("status "+l[6]));
//        return null;
//    }

    public List<RezerwacjeUzytkownika> userReservations(String uzytkownikID) {
        Session session = sessionFactory.getCurrentSession();
        List<RezerwacjeUzytkownika> lista = new ArrayList<>();

        Query query = session.createQuery("from RezerwacjeUzytkownika where uzytkownik_id = :uzytkownikID", RezerwacjeUzytkownika.class);
        query.setParameter("uzytkownikID", uzytkownikID);

        List<RezerwacjeUzytkownika> listaRezerwacje = query.getResultList();

        lista.addAll(listaRezerwacje);

        return lista;
    }

    public List<ZamowieniaUzytkownika> userOrders(String uzytkownikID) {
        Session session = sessionFactory.getCurrentSession();
        List<ZamowieniaUzytkownika> lista = new ArrayList<>();

        Query query = session.createQuery("from ZamowieniaUzytkownika where uzytkownik_id = :uzytkownikID", ZamowieniaUzytkownika.class);
        query.setParameter("uzytkownikID", uzytkownikID);

        List<ZamowieniaUzytkownika> listaZamowienia = query.getResultList();

        lista.addAll(listaZamowienia);

        return lista;
    }
}
