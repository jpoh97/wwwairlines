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
 * @author JPOH97
 */
@Embeddable
public class VueloxcabinaPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "idvuelo")
    private int idvuelo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "idcabina")
    private int idcabina;

    public VueloxcabinaPK() {
    }

    public VueloxcabinaPK(int idvuelo, int idcabina) {
        this.idvuelo = idvuelo;
        this.idcabina = idcabina;
    }

    public int getIdvuelo() {
        return idvuelo;
    }

    public void setIdvuelo(int idvuelo) {
        this.idvuelo = idvuelo;
    }

    public int getIdcabina() {
        return idcabina;
    }

    public void setIdcabina(int idcabina) {
        this.idcabina = idcabina;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) idvuelo;
        hash += (int) idcabina;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof VueloxcabinaPK)) {
            return false;
        }
        VueloxcabinaPK other = (VueloxcabinaPK) object;
        if (this.idvuelo != other.idvuelo) {
            return false;
        }
        if (this.idcabina != other.idcabina) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.udea.business.VueloxcabinaPK[ idvuelo=" + idvuelo + ", idcabina=" + idcabina + " ]";
    }
    
}
