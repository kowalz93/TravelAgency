package com.TravelAgency.entity;

import javax.persistence.*;

/**
 * Created by Marcin on 17.04.2018.
 */
@Entity
@Table(name = "hotele")
public class panstwa_miasta {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column
    private Integer idPanstwa;

    @Column
    private String nazwa_miasta;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getIdPanstwa() {
        return idPanstwa;
    }

    public void setIdPanstwa(Integer idPanstwa) {
        this.idPanstwa = idPanstwa;
    }

    public String getNazwa_miasta() {
        return nazwa_miasta;
    }

    public void setNazwa_miasta(String nazwa_miasta) {
        this.nazwa_miasta = nazwa_miasta;
    }
}