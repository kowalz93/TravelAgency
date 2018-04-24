package com.TravelAgency.dao;

import com.TravelAgency.entity.panstwa_miasta;
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
public class PanstwaMiastaDAO {
    @Autowired
    private SessionFactory sessionFactory;

    public void save(panstwa_miasta dane) {
        Session session = sessionFactory.getCurrentSession();

        session.save(dane);

    }
}
