/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.business;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author JPOH97
 */
@Entity
@Table(name = "cabina")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Cabina.findAll", query = "SELECT c FROM Cabina c"),
    @NamedQuery(name = "Cabina.findById", query = "SELECT c FROM Cabina c WHERE c.id = :id"),
    @NamedQuery(name = "Cabina.findByCapacidad", query = "SELECT c FROM Cabina c WHERE c.capacidad = :capacidad")})
public class Cabina implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "capacidad")
    private int capacidad;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "cabina", fetch = FetchType.LAZY)
    private List<Vueloxcabina> vueloxcabinaList;
    @OneToMany(mappedBy = "cabina", fetch = FetchType.LAZY)
    private List<Asiento> asientoList;
    @JoinColumn(name = "tipo", referencedColumnName = "id")
    @ManyToOne(fetch = FetchType.LAZY)
    private Tipocabina tipo;
    @JoinColumn(name = "avion", referencedColumnName = "id")
    @ManyToOne(fetch = FetchType.LAZY)
    private Avion avion;

    public Cabina() {
    }

    public Cabina(Integer id) {
        this.id = id;
    }

    public Cabina(Integer id, int capacidad) {
        this.id = id;
        this.capacidad = capacidad;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
    }

    @XmlTransient
    public List<Vueloxcabina> getVueloxcabinaList() {
        return vueloxcabinaList;
    }

    public void setVueloxcabinaList(List<Vueloxcabina> vueloxcabinaList) {
        this.vueloxcabinaList = vueloxcabinaList;
    }

    @XmlTransient
    public List<Asiento> getAsientoList() {
        return asientoList;
    }

    public void setAsientoList(List<Asiento> asientoList) {
        this.asientoList = asientoList;
    }

    public Tipocabina getTipo() {
        return tipo;
    }

    public void setTipo(Tipocabina tipo) {
        this.tipo = tipo;
    }

    public Avion getAvion() {
        return avion;
    }

    public void setAvion(Avion avion) {
        this.avion = avion;
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
        if (!(object instanceof Cabina)) {
            return false;
        }
        Cabina other = (Cabina) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.udea.business.Cabina[ id=" + id + " ]";
    }
    
}
