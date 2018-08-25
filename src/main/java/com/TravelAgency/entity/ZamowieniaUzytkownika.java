package com.TravelAgency.entity;

import org.hibernate.annotations.Immutable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.math.BigDecimal;
import java.sql.Date;

/**
 * Created by Marcin on 24.07.2018.
 */
@Entity
@Table(name = "ZamowieniaUzytkownika")
@Immutable
public class ZamowieniaUzytkownika {

    @Column
    @Id
    private String nr_zamowienia;

    @Column
    private Date data_rezerwacji;

    @Column
    private Date data_anulowania;

    @Column
    private Date termin_platnosci;

    @Column
    private Date data_od;

    @Column
    private Date data_zakupu;

    @Column
    private String status;

    @Column
    private BigDecimal cena;

    public String getNr_zamowienia() {
        return nr_zamowienia;
    }

    public void setNr_zamowienia(String nr_zamowienia) {
        this.nr_zamowienia = nr_zamowienia;
    }

    public Date getData_rezerwacji() {
        return data_rezerwacji;
    }

    public void setData_rezerwacji(Date data_rezerwacji) {
        this.data_rezerwacji = data_rezerwacji;
    }

    public Date getData_anulowania() {
        return data_anulowania;
    }

    public void setData_anulowania(Date data_anulowania) {
        this.data_anulowania = data_anulowania;
    }

    public Date getTermin_platnosci() {
        return termin_platnosci;
    }

    public void setTermin_platnosci(Date termin_platnosci) {
        this.termin_platnosci = termin_platnosci;
    }

    public Date getData_od() {
        return data_od;
    }

    public void setData_od(Date data_od) {
        this.data_od = data_od;
    }

    public Date getData_zakupu() {
        return data_zakupu;
    }

    public void setData_zakupu(Date data_zakupu) {
        this.data_zakupu = data_zakupu;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public BigDecimal getCena() {
        return cena;
    }

    public void setCena(BigDecimal cena) {
        this.cena = cena;
    }

    @Override
    public String toString() {
        return "ZamowieniaUzytkownika{" +
                "nr_zamowienia='" + nr_zamowienia + '\'' +
                ", data_rezerwacji=" + data_rezerwacji +
                ", data_anulowania=" + data_anulowania +
                ", termin_platnosci=" + termin_platnosci +
                ", data_od=" + data_od +
                ", data_zakupu=" + data_zakupu +
                ", status='" + status + '\'' +
                ", cena=" + cena +
                '}';
    }
}
