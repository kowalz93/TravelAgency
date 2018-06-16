package com.TravelAgency.dao;

import com.TravelAgency.entity.dane_uzytkownika;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import org.hibernate.query.Query;

import java.util.List;

/**
 * Created by Marcin on 12.04.2018.
 */
@Repository
@Transactional
public class DaneUzytkownikaDAO {
    @Autowired
    private SessionFactory sessionFactory;

    public void save(dane_uzytkownika dane){
        Session session = sessionFactory.getCurrentSession();

        session.save(dane);

    }

    public dane_uzytkownika getByUsername(String username){
        System.out.println("#### getByUsername=" + username);
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from dane_uzytkownika where login = :username", dane_uzytkownika.class);
        query.setParameter("username", username);
        List<dane_uzytkownika> lista = query.list();

        if(lista.size() == 1){
            return lista.get(0);
        } else {
            return null;
        }

    }

}
