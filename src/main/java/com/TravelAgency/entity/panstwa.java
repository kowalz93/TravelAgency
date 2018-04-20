package com.TravelAgency.entity;

import javax.persistence.*;

/**
 * Created by Marcin on 17.04.2018.
 */
@Entity
@Table(name = "panstwa")
public class panstwa {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column
    private String nazwa_panstwa;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNazwa_panstwa() {
        return nazwa_panstwa;
    }

    public void setNazwa_panstwa(String nazwa_panstwa) {
        this.nazwa_panstwa = nazwa_panstwa;
    }
}
