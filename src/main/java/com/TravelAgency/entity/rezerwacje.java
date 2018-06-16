package com.TravelAgency.entity;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by Marcin on 07.06.2018.
 */

@Entity
@Table(name = "rezerwacje")
public class rezerwacje {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column
    private String oferta_id;

    @Column
    private String uzytkownik_id;

    @Column
    private Date data_rezerwacji;

    @Column
    private Date data_anulowania;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOferta_id() {
        return oferta_id;
    }

    public void setOferta_id(String oferta_id) {
        this.oferta_id = oferta_id;
    }

    public String getUzytkownik_id() {
        return uzytkownik_id;
    }

    public void setUzytkownik_id(String uzytkownik_id) {
        this.uzytkownik_id = uzytkownik_id;
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
}
