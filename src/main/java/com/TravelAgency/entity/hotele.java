package com.TravelAgency.entity;


import javax.persistence.*;

/**
 * Created by Marcin on 16.04.2018.
 */
@Entity
@Table(name = "hotele")
public class hotele {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column
    private String nazwa_hotelu;

    @Column
    private String opis_hotelu;

    @Column
    private String standard_hotelu;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNazwa_hotelu() {
        return nazwa_hotelu;
    }

    public void setNazwa_hotelu(String nazwa_hotelu) {
        this.nazwa_hotelu = nazwa_hotelu;
    }

    public String getOpis_hotelu() {
        return opis_hotelu;
    }

    public void setOpis_hotelu(String opis_hotelu) {
        this.opis_hotelu = opis_hotelu;
    }

    public String getStandard_hotelu() {
        return standard_hotelu;
    }

    public void setStandard_hotelu(String standard_hotelu) {
        this.standard_hotelu = standard_hotelu;
    }



}
