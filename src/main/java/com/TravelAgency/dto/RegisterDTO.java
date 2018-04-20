package com.TravelAgency.dto;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Max;

/**
 * Created by Marcin on 17.04.2018.
 */
public class RegisterDTO {

   // @NotEmpty
    @Max(15)
    private String login;

    //@NotEmpty
    @Max(25)
    private String haslo;

    @NotEmpty
    private String imie;

    @NotEmpty
    private String nazwisko;

    private String pesel;

    //@NotEmpty
    private String adres;

    //@NotEmpty
    private String nr_kontaktowy;

    //@NotEmpty
    //@Email
    private String e_mail;

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
}
