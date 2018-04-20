package com.TravelAgency.dao;

import com.TravelAgency.entity.dane_uzytkownika;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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

}
