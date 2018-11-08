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
