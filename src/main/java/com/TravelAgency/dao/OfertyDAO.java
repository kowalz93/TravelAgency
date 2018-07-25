package com.TravelAgency.dao;

import com.TravelAgency.entity.oferty;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Marcin on 21.04.2018.
 */
@Repository
@Transactional
public class OfertyDAO {
    @Autowired
    private SessionFactory sessionFactory;

    public void save(oferty dane){
        Session session = sessionFactory.getCurrentSession();
        session.save(dane);
    }

    public oferty get(int id){
        System.out.println("#### start"); /// to już masz
        Session session = sessionFactory.getCurrentSession();
        oferty of =  (oferty) session.get(oferty.class, id);
        System.out.println("#### koniec");
        return of;
    }

    public List<oferty> findAllOfferts() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from oferty where data_od - 5 > current_date()", oferty.class);
        List<oferty> lista = query.list();
        return lista;
    }

    public List<oferty> findAllOffertsLastMinute() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from oferty where data_od > current_date() and data_od <= current_date() + 5", oferty.class);
        List<oferty> lista = query.list();
        return lista;
    }

    public List<oferty> findSearch(String searchValue) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from oferty where tytul like '%" + searchValue +"%' or opis like '%" + searchValue + "%'", oferty.class);
        List<oferty> lista = query.list();
        return lista;
    }
}
