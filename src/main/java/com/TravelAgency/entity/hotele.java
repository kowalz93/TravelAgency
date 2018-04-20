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
    private Integer idOferty;

    @Column
    private String nazwa_hotelu;

    @Column
    private String opis_hotelu;

    @Column
    private String standard_hotelu;

    @Column
    private Integer idUzytkownika_rezerwacja;

    @Column
    private Integer idUzytkownika_zakup;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getIdOferty() {
        return idOferty;
    }

    public void setIdOferty(Integer idOferty) {
        this.idOferty = idOferty;
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

    public Integer getIdUzytkownika_rezerwacja() {
        return idUzytkownika_rezerwacja;
    }

    public void setIdUzytkownika_rezerwacja(Integer idUzytkownika_rezerwacja) {
        this.idUzytkownika_rezerwacja = idUzytkownika_rezerwacja;
    }

    public Integer getIdUzytkownika_zakup() {
        return idUzytkownika_zakup;
    }

    public void setIdUzytkownika_zakup(Integer idUzytkownika_zakup) {
        this.idUzytkownika_zakup = idUzytkownika_zakup;
    }
}
