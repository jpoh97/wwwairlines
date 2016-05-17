/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.business;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;

/**
 *
 * @author daemonsoft
 */
@Embeddable
public class TiquetePK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "vuelo")
    private int vuelo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "asiento")
    private int asiento;

    public TiquetePK() {
    }

    public TiquetePK(int vuelo, int asiento) {
        this.vuelo = vuelo;
        this.asiento = asiento;
    }

    public int getVuelo() {
        return vuelo;
    }

    public void setVuelo(int vuelo) {
        this.vuelo = vuelo;
    }

    public int getAsiento() {
        return asiento;
    }

    public void setAsiento(int asiento) {
        this.asiento = asiento;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) vuelo;
        hash += (int) asiento;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TiquetePK)) {
            return false;
        }
        TiquetePK other = (TiquetePK) object;
        if (this.vuelo != other.vuelo) {
            return false;
        }
        if (this.asiento != other.asiento) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.udea.business.TiquetePK[ vuelo=" + vuelo + ", asiento=" + asiento + " ]";
    }
    
}
