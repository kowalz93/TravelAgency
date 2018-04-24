package com.TravelAgency.dao;

import com.TravelAgency.entity.oferty;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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

        session.save(dane);    }
}
