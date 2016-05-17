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
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
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
@Table(name = "vuelo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Vuelo.findAll", query = "SELECT v FROM Vuelo v"),
    @NamedQuery(name = "Vuelo.findById", query = "SELECT v FROM Vuelo v WHERE v.id = :id"),
    @NamedQuery(name = "Vuelo.findByFecha", query = "SELECT v FROM Vuelo v WHERE v.fecha = :fecha")})
public class Vuelo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Column(name = "fecha")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fecha;
    @JoinTable(name = "vueloxescala", joinColumns = {
        @JoinColumn(name = "idvuelo", referencedColumnName = "id")}, inverseJoinColumns = {
        @JoinColumn(name = "idescala", referencedColumnName = "id")})
    @ManyToMany(fetch = FetchType.LAZY)
    private List<Escala> escalaList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "vuelo1", fetch = FetchType.LAZY)
    private List<Tiquete> tiqueteList;
    @JoinColumn(name = "aeropuerto_salida", referencedColumnName = "id")
    @ManyToOne(fetch = FetchType.LAZY)
    private Aeropuerto aeropuertoSalida;
    @JoinColumn(name = "aeropuerto_llegada", referencedColumnName = "id")
    @ManyToOne(fetch = FetchType.LAZY)
    private Aeropuerto aeropuertoLlegada;
    @OneToMany(mappedBy = "idvuelo", fetch = FetchType.LAZY)
    private List<Escala> escalaList1;

    public Vuelo() {
    }

    public Vuelo(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    @XmlTransient
    public List<Escala> getEscalaList() {
        return escalaList;
    }

    public void setEscalaList(List<Escala> escalaList) {
        this.escalaList = escalaList;
    }

    @XmlTransient
    public List<Tiquete> getTiqueteList() {
        return tiqueteList;
    }

    public void setTiqueteList(List<Tiquete> tiqueteList) {
        this.tiqueteList = tiqueteList;
    }

    public Aeropuerto getAeropuertoSalida() {
        return aeropuertoSalida;
    }

    public void setAeropuertoSalida(Aeropuerto aeropuertoSalida) {
        this.aeropuertoSalida = aeropuertoSalida;
    }

    public Aeropuerto getAeropuertoLlegada() {
        return aeropuertoLlegada;
    }

    public void setAeropuertoLlegada(Aeropuerto aeropuertoLlegada) {
        this.aeropuertoLlegada = aeropuertoLlegada;
    }

    @XmlTransient
    public List<Escala> getEscalaList1() {
        return escalaList1;
    }

    public void setEscalaList1(List<Escala> escalaList1) {
        this.escalaList1 = escalaList1;
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
        if (!(object instanceof Vuelo)) {
            return false;
        }
        Vuelo other = (Vuelo) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.udea.business.Vuelo[ id=" + id + " ]";
    }
    
}
