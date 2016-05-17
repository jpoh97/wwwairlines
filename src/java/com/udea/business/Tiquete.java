/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.business;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author daemonsoft
 */
@Entity
@Table(name = "tiquete")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Tiquete.findAll", query = "SELECT t FROM Tiquete t"),
    @NamedQuery(name = "Tiquete.findByVuelo", query = "SELECT t FROM Tiquete t WHERE t.tiquetePK.vuelo = :vuelo"),
    @NamedQuery(name = "Tiquete.findByAsiento", query = "SELECT t FROM Tiquete t WHERE t.tiquetePK.asiento = :asiento"),
    @NamedQuery(name = "Tiquete.findByPrecio", query = "SELECT t FROM Tiquete t WHERE t.precio = :precio")})
public class Tiquete implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected TiquetePK tiquetePK;
    @Column(name = "precio")
    private Integer precio;
    @JoinColumn(name = "vuelo", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Vuelo vuelo1;
    @JoinColumn(name = "asiento", referencedColumnName = "id", insertable = false, updatable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Asiento asiento1;

    public Tiquete() {
    }

    public Tiquete(TiquetePK tiquetePK) {
        this.tiquetePK = tiquetePK;
    }

    public Tiquete(int vuelo, int asiento) {
        this.tiquetePK = new TiquetePK(vuelo, asiento);
    }

    public TiquetePK getTiquetePK() {
        return tiquetePK;
    }

    public void setTiquetePK(TiquetePK tiquetePK) {
        this.tiquetePK = tiquetePK;
    }

    public Integer getPrecio() {
        return precio;
    }

    public void setPrecio(Integer precio) {
        this.precio = precio;
    }

    public Vuelo getVuelo1() {
        return vuelo1;
    }

    public void setVuelo1(Vuelo vuelo1) {
        this.vuelo1 = vuelo1;
    }

    public Asiento getAsiento1() {
        return asiento1;
    }

    public void setAsiento1(Asiento asiento1) {
        this.asiento1 = asiento1;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (tiquetePK != null ? tiquetePK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Tiquete)) {
            return false;
        }
        Tiquete other = (Tiquete) object;
        if ((this.tiquetePK == null && other.tiquetePK != null) || (this.tiquetePK != null && !this.tiquetePK.equals(other.tiquetePK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.udea.business.Tiquete[ tiquetePK=" + tiquetePK + " ]";
    }
    
}
