/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.business;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author JPOH97
 */
@Entity
@Table(name = "vueloxcabina")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Vueloxcabina.findAll", query = "SELECT v FROM Vueloxcabina v"),
    @NamedQuery(name = "Vueloxcabina.findByIdvuelo", query = "SELECT v FROM Vueloxcabina v WHERE v.vueloxcabinaPK.idvuelo = :idvuelo"),
    @NamedQuery(name = "Vueloxcabina.findByIdcabina", query = "SELECT v FROM Vueloxcabina v WHERE v.vueloxcabinaPK.idcabina = :idcabina"),
    @NamedQuery(name = "Vueloxcabina.findByPrecio", query = "SELECT v FROM Vueloxcabina v WHERE v.precio = :precio")})
public class Vueloxcabina implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected VueloxcabinaPK vueloxcabinaPK;
    @Basic(optional = false)
    @NotNull
    @Column(name = "precio")
    private int precio;
    @JoinColumn(name = "idcabina", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Cabina cabina;
    @JoinColumn(name = "idvuelo", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Vuelo vuelo;

    public Vueloxcabina() {
    }

    public Vueloxcabina(VueloxcabinaPK vueloxcabinaPK) {
        this.vueloxcabinaPK = vueloxcabinaPK;
    }

    public Vueloxcabina(VueloxcabinaPK vueloxcabinaPK, int precio) {
        this.vueloxcabinaPK = vueloxcabinaPK;
        this.precio = precio;
    }

    public Vueloxcabina(int idvuelo, int idcabina) {
        this.vueloxcabinaPK = new VueloxcabinaPK(idvuelo, idcabina);
    }

    public VueloxcabinaPK getVueloxcabinaPK() {
        return vueloxcabinaPK;
    }

    public void setVueloxcabinaPK(VueloxcabinaPK vueloxcabinaPK) {
        this.vueloxcabinaPK = vueloxcabinaPK;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public Cabina getCabina() {
        return cabina;
    }

    public void setCabina(Cabina cabina) {
        this.cabina = cabina;
    }

    public Vuelo getVuelo() {
        return vuelo;
    }

    public void setVuelo(Vuelo vuelo) {
        this.vuelo = vuelo;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (vueloxcabinaPK != null ? vueloxcabinaPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Vueloxcabina)) {
            return false;
        }
        Vueloxcabina other = (Vueloxcabina) object;
        if ((this.vueloxcabinaPK == null && other.vueloxcabinaPK != null) || (this.vueloxcabinaPK != null && !this.vueloxcabinaPK.equals(other.vueloxcabinaPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.udea.business.Vueloxcabina[ vueloxcabinaPK=" + vueloxcabinaPK + " ]";
    }
    
}
