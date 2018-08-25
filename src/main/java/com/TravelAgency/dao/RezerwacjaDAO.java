package com.TravelAgency.dao;

import com.TravelAgency.entity.dane_uzytkownika;
import com.TravelAgency.entity.rezerwacje;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Marcin on 17.06.2018.
 */
@Repository
@Transactional
public class RezerwacjaDAO extends OfertyDAO {
    @Autowired
    private SessionFactory sessionFactory;

    public void save(rezerwacje dane){
        Session session = sessionFactory.getCurrentSession();

        session.save(dane);
    }
    public int getRezerwacja(String ofertaID, String uzytkownikID){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from rezerwacje where uzytkownik_id = :uzytkownikID and " +
                "oferta_id = :ofertaID and data_anulowania is null", rezerwacje.class);
        query.setParameter("uzytkownikID", uzytkownikID);
        query.setParameter("ofertaID", ofertaID);
        List<rezerwacje> lista = query.list();

        return lista.size();
    }
    public List<rezerwacje> userReservations(String uzytkownikID) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from rezerwacje where uzytkownik_id = :uzytkownikID", rezerwacje.class);
        query.setParameter("uzytkownikID", uzytkownikID);

        List<rezerwacje> lista = query.list();
        return lista;
    }
}
