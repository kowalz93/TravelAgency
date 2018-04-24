package com.TravelAgency.dao;

import com.TravelAgency.entity.panstwa;
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
public class PanstwaDAO {
    @Autowired
    private SessionFactory sessionFactory;

    public void save(panstwa dane){
        Session session = sessionFactory.getCurrentSession();

        session.save(dane);
    }
}
