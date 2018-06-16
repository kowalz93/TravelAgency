package com.TravelAgency.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Marcin on 07.06.2018.
 */
@Entity
@Table(name = "zakupy")
public class zakupy {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column
    private Integer oferta_id;

    @Column
    private Integer uzytkownik_id;

    @Column
    private Date data_zakupu;

    @Column
    private Date data_anulowania;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getOferta_id() {
        return oferta_id;
    }

    public void setOferta_id(Integer oferta_id) {
        this.oferta_id = oferta_id;
    }

    public Integer getUzytkownik_id() {
        return uzytkownik_id;
    }

    public void setUzytkownik_id(Integer uzytkownik_id) {
        this.uzytkownik_id = uzytkownik_id;
    }

    public Date getData_zakupu() {
        return data_zakupu;
    }

    public void setData_zakupu(Date data_zakupu) {
        this.data_zakupu = data_zakupu;
    }

    public Date getData_anulowania() {
        return data_anulowania;
    }

    public void setData_anulowania(Date data_anulowania) {
        this.data_anulowania = data_anulowania;
    }
}
