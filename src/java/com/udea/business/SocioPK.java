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
import javax.validation.constraints.Size;

/**
 *
 * @author JPOH97
 */
@Embeddable
public class SocioPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 2)
    @Column(name = "tipoid")
    private String tipoid;
    @Basic(optional = false)
    @NotNull
    @Column(name = "numeroid")
    private int numeroid;

    public SocioPK() {
    }

    public SocioPK(String tipoid, int numeroid) {
        this.tipoid = tipoid;
        this.numeroid = numeroid;
    }

    public String getTipoid() {
        return tipoid;
    }

    public void setTipoid(String tipoid) {
        this.tipoid = tipoid;
    }

    public int getNumeroid() {
        return numeroid;
    }

    public void setNumeroid(int numeroid) {
        this.numeroid = numeroid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (tipoid != null ? tipoid.hashCode() : 0);
        hash += (int) numeroid;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof SocioPK)) {
            return false;
        }
        SocioPK other = (SocioPK) object;
        if ((this.tipoid == null && other.tipoid != null) || (this.tipoid != null && !this.tipoid.equals(other.tipoid))) {
            return false;
        }
        if (this.numeroid != other.numeroid) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.udea.business.SocioPK[ tipoid=" + tipoid + ", numeroid=" + numeroid + " ]";
    }
    
}
