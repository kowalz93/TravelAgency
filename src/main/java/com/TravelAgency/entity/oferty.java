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

    @Column
    private String zdjecie1;

    @Column
    private String zdjecie2;

    @Column
    private String zdjecie3;

    @Column
    private String zdjecie4;

    @Column
    private String for_him;

    @Column
    private String for_her;

    @Column
    private String for_kids;

    @Column
    private String for_anyone;

    @Column
    private String even_couples;

    @Column
    private String any_other;

    @Column
    private String benefits_and_features;

    @Column
    private String szczegoly_oferty;

    @Column
    private Integer hotel_id;

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

    public String getZdjecie1() {
        return zdjecie1;
    }

    public void setZdjecie1(String zdjecie1) {
        this.zdjecie1 = zdjecie1;
    }

    public String getZdjecie2() {
        return zdjecie2;
    }

    public void setZdjecie2(String zdjecie2) {
        this.zdjecie2 = zdjecie2;
    }

    public String getZdjecie3() {
        return zdjecie3;
    }

    public void setZdjecie3(String zdjecie3) {
        this.zdjecie3 = zdjecie3;
    }

    public String getZdjecie4() {
        return zdjecie4;
    }

    public void setZdjecie4(String zdjecie4) {
        this.zdjecie4 = zdjecie4;
    }

    public String getFor_him() {
        return for_him;
    }

    public void setFor_him(String for_him) {
        this.for_him = for_him;
    }

    public String getFor_her() {
        return for_her;
    }

    public void setFor_her(String for_her) {
        this.for_her = for_her;
    }

    public String getFor_kids() {
        return for_kids;
    }

    public void setFor_kids(String for_kids) {
        this.for_kids = for_kids;
    }

    public String getFor_anyone() {
        return for_anyone;
    }

    public void setFor_anyone(String for_anyone) {
        this.for_anyone = for_anyone;
    }

    public String getEven_couples() {
        return even_couples;
    }

    public void setEven_couples(String even_couples) {
        this.even_couples = even_couples;
    }

    public String getAny_other() {
        return any_other;
    }

    public void setAny_other(String any_other) {
        this.any_other = any_other;
    }

    public String getBenefits_and_features() {
        return benefits_and_features;
    }

    public void setBenefits_and_features(String benefits_and_features) {
        this.benefits_and_features = benefits_and_features;
    }

    public String getSzczegoly_oferty() {
        return szczegoly_oferty;
    }

    public void setSzczegoly_oferty(String szczegoly_oferty) {
        this.szczegoly_oferty = szczegoly_oferty;
    }

    public Integer getHotel_id() {
        return hotel_id;
    }

    public void setHotel_id(Integer hotel_id) {
        this.hotel_id = hotel_id;
    }
}
