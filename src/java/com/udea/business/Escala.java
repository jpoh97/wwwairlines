/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.business;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author JPOH97
 */
@Entity
@Table(name = "escala")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Escala.findAll", query = "SELECT e FROM Escala e"),
    @NamedQuery(name = "Escala.findById", query = "SELECT e FROM Escala e WHERE e.id = :id"),
    @NamedQuery(name = "Escala.findByHora", query = "SELECT e FROM Escala e WHERE e.hora = :hora")})
public class Escala implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "hora")
    @Temporal(TemporalType.TIMESTAMP)
    private Date hora;
    @JoinColumn(name = "idvuelo", referencedColumnName = "id")
    @ManyToOne(fetch = FetchType.LAZY)
    private Vuelo idvuelo;
    @JoinColumn(name = "idavion", referencedColumnName = "id")
    @ManyToOne(fetch = FetchType.LAZY)
    private Avion idavion;
    @JoinColumn(name = "aeropuerto", referencedColumnName = "id")
    @ManyToOne(fetch = FetchType.LAZY)
    private Aeropuerto aeropuerto;

    public Escala() {
    }

    public Escala(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getHora() {
        return hora;
    }

    public void setHora(Date hora) {
        this.hora = hora;
    }

    public Vuelo getIdvuelo() {
        return idvuelo;
    }

    public void setIdvuelo(Vuelo idvuelo) {
        this.idvuelo = idvuelo;
    }

    public Avion getIdavion() {
        return idavion;
    }

    public void setIdavion(Avion idavion) {
        this.idavion = idavion;
    }

    public Aeropuerto getAeropuerto() {
        return aeropuerto;
    }

    public void setAeropuerto(Aeropuerto aeropuerto) {
        this.aeropuerto = aeropuerto;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Escala)) {
            return false;
        }
        Escala other = (Escala) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.udea.business.Escala[ id=" + id + " ]";
    }
    
}
