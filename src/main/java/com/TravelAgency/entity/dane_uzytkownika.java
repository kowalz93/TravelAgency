package com.TravelAgency.entity;

import javax.persistence.*;

/**
 * Created by Marcin on 12.04.2018.
 */
@Entity
@Table(name="dane_uzytkownika")
public class dane_uzytkownika {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "login")
    private String login;

    @Column(name = "haslo")
    private String haslo;

    @Column(name = "imie")
    private String imie;

    @Column(name = "nazwisko")
    private String nazwisko;

    @Column(name = "pesel")
    private String pesel;

    @Column(name = "adres")
    private String adres;

    @Column(name = "nr_kontaktowy")
    private String nr_kontaktowy;

    @Column(name = "e_mail")
    private String e_mail;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getHaslo() {
        return haslo;
    }

    public void setHaslo(String haslo) {
        this.haslo = haslo;
    }

    public String getImie() {
        return imie;
    }

    public void setImie(String imie) {
        this.imie = imie;
    }

    public String getNazwisko() {
        return nazwisko;
    }

    public void setNazwisko(String nazwisko) {
        this.nazwisko = nazwisko;
    }

    public String getPesel() {
        return pesel;
    }

    public void setPesel(String pesel) {
        this.pesel = pesel;
    }

    public String getAdres() {
        return adres;
    }

    public void setAdres(String adres) {
        this.adres = adres;
    }

    public String getNr_kontaktowy() {
        return nr_kontaktowy;
    }

    public void setNr_kontaktowy(String nr_kontaktowy) {
        this.nr_kontaktowy = nr_kontaktowy;
    }

    public String getE_mail() {
        return e_mail;
    }

    public void setE_mail(String e_mail) {
        this.e_mail = e_mail;
    }

    @Override
    public String toString() {
        return "dane_uzytkownika{" +
                "id=" + id +
                ", login='" + login + '\'' +
                ", haslo='" + haslo + '\'' +
                ", imie='" + imie + '\'' +
                ", nazwisko='" + nazwisko + '\'' +
                ", pesel=" + pesel +
                ", adres='" + adres + '\'' +
                ", nr_kontaktowy='" + nr_kontaktowy + '\'' +
                ", e_mail='" + e_mail + '\'' +
                '}';
    }

}
