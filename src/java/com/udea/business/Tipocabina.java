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
@Table(name = "tipocabina")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Tipocabina.findAll", query = "SELECT t FROM Tipocabina t"),
    @NamedQuery(name = "Tipocabina.findById", query = "SELECT t FROM Tipocabina t WHERE t.id = :id"),
    @NamedQuery(name = "Tipocabina.findByNombre", query = "SELECT t FROM Tipocabina t WHERE t.nombre = :nombre")})
public class Tipocabina implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Size(max = 50)
    @Column(name = "nombre")
    private String nombre;
    @OneToMany(mappedBy = "tipo", fetch = FetchType.LAZY)
    private List<Cabina> cabinaList;

    public Tipocabina() {
    }

    public Tipocabina(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
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
        if (!(object instanceof Tipocabina)) {
            return false;
        }
        Tipocabina other = (Tipocabina) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.udea.business.Tipocabina[ id=" + id + " ]";
    }
    
}
