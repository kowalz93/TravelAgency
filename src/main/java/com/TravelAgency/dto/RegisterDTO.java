package com.TravelAgency.dto;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Max;
import javax.validation.constraints.Size;

/**
 * Created by Marcin on 17.04.2018.
 */
public class RegisterDTO {

    @Size(max=15)
    @NotEmpty
    private String login;


    @Size(max=25)
    @NotEmpty
    private String haslo;

    @Size(max=15)
    @NotEmpty
    private String imie;

    @Size(max=25)
    @NotEmpty
    private String nazwisko;

    @Size(min=11 ,max=11, message = "PESEL musi mieć 11 znaków")
    private String pesel;

    @Size(max = 60)
    @NotEmpty
    private String miejscowosc;

    @Size
    @NotEmpty
    private String kod_pocztowy;

    @Size(max = 70)
    @NotEmpty
    private String ulica;

    @Size(max = 15)
    @NotEmpty
    private String nr_domu_mieszkania;         // dodaj poszczególne dodatkowe dane tak jak w formularzu rejstracji

    @Size(max=15)
    @NotEmpty
    private String nr_kontaktowy;

    @Size(max=30)
    @NotEmpty
    @Email
    private String e_mail;


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
}
