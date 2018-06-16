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
        Session session = sessionFactory.getCurrentSession();

        oferty of =  (oferty) session.get(oferty.class, id);

        return of;
    }
}
