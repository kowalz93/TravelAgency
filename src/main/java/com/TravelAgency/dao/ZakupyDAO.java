package com.TravelAgency.dao;

import com.TravelAgency.entity.rezerwacje;
import com.TravelAgency.entity.zakupy;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Marcin on 23.06.2018.
 */
@Repository
@Transactional
public class ZakupyDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public void save(zakupy dane){
        Session session = sessionFactory.getCurrentSession();

        session.save(dane);
    }
    public int getZakupy(String ofertaID, String uzytkownikID){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from zakupy where uzytkownik_id = :uzytkownikID and " +
                "oferta_id = :ofertaID ", zakupy.class);
        query.setParameter("uzytkownikID", uzytkownikID);
        query.setParameter("ofertaID", ofertaID);
        List<zakupy> lista = query.list(); // zakupy ???? Sprawdź TO !!!

        return lista.size();
    }
}
