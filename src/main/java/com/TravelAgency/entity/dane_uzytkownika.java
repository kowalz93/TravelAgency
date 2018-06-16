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

    @Column(name = "nr_kontaktowy")
    private String nr_kontaktowy;

    @Column(name = "e_mail")
    private String e_mail;

    @Column(name = "miejscowosc")   // tutaj takżę  !
    private String miejscowosc;

    @Column(name = "kod_pocztowy")
    private String kod_pocztowy;

    @Column(name = "ulica")
    private String ulica;

    @Column(name = "nr_domu_mieszkania")
    private String nr_domu_mieszkania;

    public String getMiejscowosc() {
        return miejscowosc;
    }

    public void setMiejscowosc(String miejscowosc) {
        this.miejscowosc = miejscowosc;
    }

    public String getKod_pocztowy() {
        return kod_pocztowy;
    }

    public void setKod_pocztowy(String kod_pocztowy) {
        this.kod_pocztowy = kod_pocztowy;
    }

    public String getUlica() {
        return ulica;
    }

    public void setUlica(String ulica) {
        this.ulica = ulica;
    }

    public String getNr_domu_mieszkania() {
        return nr_domu_mieszkania;
    }

    public void setNr_domu_mieszkania(String nr_domu_mieszkania) {
        this.nr_domu_mieszkania = nr_domu_mieszkania;
    }

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

//    @Override
//    public String toString() {
//        return "dane_uzytkownika{" +
//                "id=" + id +
//                ", login='" + login + '\'' +
//                ", haslo='" + haslo + '\'' +
//                ", imie='" + imie + '\'' +
//                ", nazwisko='" + nazwisko + '\'' +
//                ", pesel=" + pesel +
//                ", miejscowosc='"  + miejscowosc '\'' +
//                ", nr_kontaktowy='" + nr_kontaktowy + '\'' +
//                ", e_mail='" + e_mail + '\'' +
//                '}';
//    }

}
