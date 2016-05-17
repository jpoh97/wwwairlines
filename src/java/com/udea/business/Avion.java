/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.business;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author daemonsoft
 */
@Entity
@Table(name = "avion")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Avion.findAll", query = "SELECT a FROM Avion a"),
    @NamedQuery(name = "Avion.findById", query = "SELECT a FROM Avion a WHERE a.id = :id"),
    @NamedQuery(name = "Avion.findByNombre", query = "SELECT a FROM Avion a WHERE a.nombre = :nombre"),
    @NamedQuery(name = "Avion.findByCapacidadPrimera", query = "SELECT a FROM Avion a WHERE a.capacidadPrimera = :capacidadPrimera"),
    @NamedQuery(name = "Avion.findByCapacidadEconomica", query = "SELECT a FROM Avion a WHERE a.capacidadEconomica = :capacidadEconomica")})
public class Avion implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "id")
    private String id;
    @Size(max = 50)
    @Column(name = "nombre")
    private String nombre;
    @Column(name = "capacidad_primera")
    private Integer capacidadPrimera;
    @Column(name = "capacidad_economica")
    private Integer capacidadEconomica;
    @OneToMany(mappedBy = "avion", fetch = FetchType.LAZY)
    private List<Cabina> cabinaList;

    public Avion() {
    }

    public Avion(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Integer getCapacidadPrimera() {
        return capacidadPrimera;
    }

    public void setCapacidadPrimera(Integer capacidadPrimera) {
        this.capacidadPrimera = capacidadPrimera;
    }

    public Integer getCapacidadEconomica() {
        return capacidadEconomica;
    }

    public void setCapacidadEconomica(Integer capacidadEconomica) {
        this.capacidadEconomica = capacidadEconomica;
    }

    @XmlTransient
    public List<Cabina> getCabinaList() {
        return cabinaList;
    }

    public void setCabinaList(List<Cabina> cabinaList) {
        this.cabinaList = cabinaList;
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
        if (!(object instanceof Avion)) {
            return false;
        }
        Avion other = (Avion) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.udea.business.Avion[ id=" + id + " ]";
    }
    
}
