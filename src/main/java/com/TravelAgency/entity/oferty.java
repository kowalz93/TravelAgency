package com.TravelAgency.entity;

import javax.persistence.*;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.Date;

/**
 * Created by Marcin on 16.04.2018.
 */
@Entity
@Table(name = "oferty")
public class oferty {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column
    private Integer idmiasta;

    @Column
    private Date data_od;

    @Column
    private Date data_do;

    @Column
    private String tytul;

    @Column
    private String opis;

    @Column
    private DecimalFormat cena;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getIdmiasta() {
        return idmiasta;
    }

    public void setIdmiasta(Integer idmiasta) {
        this.idmiasta = idmiasta;
    }

    public Date getData_od() {
        return data_od;
    }

    public void setData_od(Date data_od) {
        this.data_od = data_od;
    }

    public Date getData_do() {
        return data_do;
    }

    public void setData_do(Date data_do) {
        this.data_do = data_do;
    }

    public String getTytul() {
        return tytul;
    }

    public void setTytul(String tytul) {
        this.tytul = tytul;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }

    public DecimalFormat getCena() {
        return cena;
    }

    public void setCena(DecimalFormat cena) {
        this.cena = cena;
    }
}
