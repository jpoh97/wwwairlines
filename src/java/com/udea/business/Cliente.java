/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.business;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author JPOH97
 */
@Entity
@Table(name = "cliente")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Cliente.findAll", query = "SELECT c FROM Cliente c"),
    @NamedQuery(name = "Cliente.findByTipoid", query = "SELECT c FROM Cliente c WHERE c.clientePK.tipoid = :tipoid"),
    @NamedQuery(name = "Cliente.findByNumeroid", query = "SELECT c FROM Cliente c WHERE c.clientePK.numeroid = :numeroid"),
    @NamedQuery(name = "Cliente.findByNombre", query = "SELECT c FROM Cliente c WHERE c.nombre = :nombre"),
    @NamedQuery(name = "Cliente.findByApellido", query = "SELECT c FROM Cliente c WHERE c.apellido = :apellido"),
    @NamedQuery(name = "Cliente.findByFechaNacimiento", query = "SELECT c FROM Cliente c WHERE c.fechaNacimiento = :fechaNacimiento"),
    @NamedQuery(name = "Cliente.findByCorreo", query = "SELECT c FROM Cliente c WHERE c.correo = :correo"),
    @NamedQuery(name = "Cliente.findByGenero", query = "SELECT c FROM Cliente c WHERE c.genero = :genero"),
    @NamedQuery(name = "Cliente.findByPaisNacimiento", query = "SELECT c FROM Cliente c WHERE c.paisNacimiento = :paisNacimiento"),
    @NamedQuery(name = "Cliente.findByPaisResidencia", query = "SELECT c FROM Cliente c WHERE c.paisResidencia = :paisResidencia"),
    @NamedQuery(name = "Cliente.findByDepartamento", query = "SELECT c FROM Cliente c WHERE c.departamento = :departamento"),
    @NamedQuery(name = "Cliente.findByCiudad", query = "SELECT c FROM Cliente c WHERE c.ciudad = :ciudad"),
    @NamedQuery(name = "Cliente.findByDireccion", query = "SELECT c FROM Cliente c WHERE c.direccion = :direccion")})
public class Cliente implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected ClientePK clientePK;
    @Size(max = 50)
    @Column(name = "nombre")
    private String nombre;
    @Size(max = 50)
    @Column(name = "apellido")
    private String apellido;
    @Column(name = "fecha_nacimiento")
    @Temporal(TemporalType.DATE)
    private Date fechaNacimiento;
    @Size(max = 50)
    @Column(name = "correo")
    private String correo;
    @Size(max = 1)
    @Column(name = "genero")
    private String genero;
    @Column(name = "pais_nacimiento")
    private Integer paisNacimiento;
    @Column(name = "pais_residencia")
    private Integer paisResidencia;
    @Column(name = "departamento")
    private Integer departamento;
    @Column(name = "ciudad")
    private Integer ciudad;
    @Size(max = 50)
    @Column(name = "direccion")
    private String direccion;

    public Cliente() {
    }

    public Cliente(ClientePK clientePK) {
        this.clientePK = clientePK;
    }

    public Cliente(String tipoid, int numeroid) {
        this.clientePK = new ClientePK(tipoid, numeroid);
    }

    public Cliente(ClientePK clientePK, String nombre, String apellido, Date fechaNacimiento, String correo, String genero, Integer paisNacimiento, Integer paisResidencia, Integer departamento, Integer ciudad, String direccion) {
        this.clientePK = clientePK;
        this.nombre = nombre;
        this.apellido = apellido;
        this.fechaNacimiento = fechaNacimiento;
        this.correo = correo;
        this.genero = genero;
        this.paisNacimiento = paisNacimiento;
        this.paisResidencia = paisResidencia;
        this.departamento = departamento;
        this.ciudad = ciudad;
        this.direccion = direccion;
    }

    public Cliente(ClientePK clientePK, String nombre, String apellido, Date date) {
        this.clientePK = clientePK;
        this.nombre = nombre;
        this.apellido = apellido;
        this.fechaNacimiento = date;
        this.correo = null;
        this.genero = null;
        this.paisNacimiento = null;
        this.paisResidencia = null;
        this.departamento = null;
        this.ciudad = null;
        this.direccion = null;
    }

    public ClientePK getClientePK() {
        return clientePK;
    }

    public void setClientePK(ClientePK clientePK) {
        this.clientePK = clientePK;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public Integer getPaisNacimiento() {
        return paisNacimiento;
    }

    public void setPaisNacimiento(Integer paisNacimiento) {
        this.paisNacimiento = paisNacimiento;
    }

    public Integer getPaisResidencia() {
        return paisResidencia;
    }

    public void setPaisResidencia(Integer paisResidencia) {
        this.paisResidencia = paisResidencia;
    }

    public Integer getDepartamento() {
        return departamento;
    }

    public void setDepartamento(Integer departamento) {
        this.departamento = departamento;
    }

    public Integer getCiudad() {
        return ciudad;
    }

    public void setCiudad(Integer ciudad) {
        this.ciudad = ciudad;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (clientePK != null ? clientePK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Cliente)) {
            return false;
        }
        Cliente other = (Cliente) object;
        if ((this.clientePK == null && other.clientePK != null) || (this.clientePK != null && !this.clientePK.equals(other.clientePK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.udea.business.Cliente[ clientePK=" + clientePK + " ]";
    }

}
