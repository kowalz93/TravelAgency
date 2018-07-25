package com.TravelAgency.dao;

import com.TravelAgency.entity.RezerwacjeUzytkownika;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Marcin on 24.07.2018.
 */
@Repository
@Transactional
public class RezerwacjeUzytkownikaDAO {
    @Autowired
    private SessionFactory sessionFactory;

    public List<RezerwacjeUzytkownika> userReservations(String uzytkownikID) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from RezerwacjeUzytkownika", RezerwacjeUzytkownika.class);
//        query.setParameter("uzytkownikID", uzytkownikID);

        List<RezerwacjeUzytkownika> lista = query.getResultList();
        lista.forEach(l -> System.out.println("getnumer zamowienia=" + l.getNr_zamowienia()));
        lista.forEach(l -> System.out.println("getDatarezerwacji "+l.getData_rezerwacji()));
        return lista;
    }


}
