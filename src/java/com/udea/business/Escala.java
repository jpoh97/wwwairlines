/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.business;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author daemonsoft
 */
@Entity
@Table(name = "escala")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Escala.findAll", query = "SELECT e FROM Escala e"),
    @NamedQuery(name = "Escala.findById", query = "SELECT e FROM Escala e WHERE e.id = :id"),
    @NamedQuery(name = "Escala.findByAeropuerto", query = "SELECT e FROM Escala e WHERE e.aeropuerto = :aeropuerto"),
    @NamedQuery(name = "Escala.findByHora", query = "SELECT e FROM Escala e WHERE e.hora = :hora")})
public class Escala implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Column(name = "aeropuerto")
    private Integer aeropuerto;
    @Column(name = "hora")
    @Temporal(TemporalType.TIMESTAMP)
    private Date hora;
    @ManyToMany(mappedBy = "escalaList", fetch = FetchType.LAZY)
    private List<Vuelo> vueloList;
    @JoinColumn(name = "idvuelo", referencedColumnName = "id")
    @ManyToOne(fetch = FetchType.LAZY)
    private Vuelo idvuelo;

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

    public Integer getAeropuerto() {
        return aeropuerto;
    }

    public void setAeropuerto(Integer aeropuerto) {
        this.aeropuerto = aeropuerto;
    }

    public Date getHora() {
        return hora;
    }

    public void setHora(Date hora) {
        this.hora = hora;
    }

    @XmlTransient
    public List<Vuelo> getVueloList() {
        return vueloList;
    }

    public void setVueloList(List<Vuelo> vueloList) {
        this.vueloList = vueloList;
    }

    public Vuelo getIdvuelo() {
        return idvuelo;
    }

    public void setIdvuelo(Vuelo idvuelo) {
        this.idvuelo = idvuelo;
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
