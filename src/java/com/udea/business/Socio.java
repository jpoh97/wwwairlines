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
@Table(name = "socio")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Socio.findAll", query = "SELECT s FROM Socio s"),
    @NamedQuery(name = "Socio.findByTipoid", query = "SELECT s FROM Socio s WHERE s.socioPK.tipoid = :tipoid"),
    @NamedQuery(name = "Socio.findByNumeroid", query = "SELECT s FROM Socio s WHERE s.socioPK.numeroid = :numeroid"),
    @NamedQuery(name = "Socio.findByNombre", query = "SELECT s FROM Socio s WHERE s.nombre = :nombre"),
    @NamedQuery(name = "Socio.findByApellido", query = "SELECT s FROM Socio s WHERE s.apellido = :apellido"),
    @NamedQuery(name = "Socio.findByFechaNacimiento", query = "SELECT s FROM Socio s WHERE s.fechaNacimiento = :fechaNacimiento"),
    @NamedQuery(name = "Socio.findByCorreo", query = "SELECT s FROM Socio s WHERE s.correo = :correo"),
    @NamedQuery(name = "Socio.findByContrasena", query = "SELECT s FROM Socio s WHERE s.contrasena = :contrasena"),
    @NamedQuery(name = "Socio.findByGenero", query = "SELECT s FROM Socio s WHERE s.genero = :genero"),
    @NamedQuery(name = "Socio.findByPaisNacimiento", query = "SELECT s FROM Socio s WHERE s.paisNacimiento = :paisNacimiento"),
    @NamedQuery(name = "Socio.findByPaisResidencia", query = "SELECT s FROM Socio s WHERE s.paisResidencia = :paisResidencia"),
    @NamedQuery(name = "Socio.findByDepartamento", query = "SELECT s FROM Socio s WHERE s.departamento = :departamento"),
    @NamedQuery(name = "Socio.findByCiudad", query = "SELECT s FROM Socio s WHERE s.ciudad = :ciudad"),
    @NamedQuery(name = "Socio.findByDireccion", query = "SELECT s FROM Socio s WHERE s.direccion = :direccion")})
public class Socio implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected SocioPK socioPK;
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
    @Size(max = 50)
    @Column(name = "contrasena")
    private String contrasena;
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
    @Column(name = "millas")
    private double millas;
    @Column(name = "tarjeta_credito")
    private Double tarjeta_credito;

    public double getMillas() {
        return millas;
    }

    public void setMillas(double millas) {
        this.millas = millas;
    }

    public Double getTarjeta_credito() {
        return tarjeta_credito;
    }

    public void setTarjeta_credito(Double tarjeta_credito) {
        this.tarjeta_credito = tarjeta_credito;
    }

    public Socio() {
    }

    public Socio(SocioPK socioPK) {
        this.socioPK = socioPK;
    }

    public Socio(String tipoid, int numeroid) {
        this.socioPK = new SocioPK(tipoid, numeroid);
    }

    public SocioPK getSocioPK() {
        return socioPK;
    }

    public void setSocioPK(SocioPK socioPK) {
        this.socioPK = socioPK;
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

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
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
        hash += (socioPK != null ? socioPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Socio)) {
            return false;
        }
        Socio other = (Socio) object;
        if ((this.socioPK == null && other.socioPK != null) || (this.socioPK != null && !this.socioPK.equals(other.socioPK))) {
            return false;
        }
        return true;
    }

    public Socio(String tipoid, int numeroid, String nombre, String apellido, Date fechaNacimiento, String correo, String contrasena, String genero, Integer paisNacimiento, Integer paisResidencia, Integer departamento, Integer ciudad, String direccion) {
        this.socioPK = new SocioPK(tipoid, numeroid);
        this.nombre = nombre;
        this.apellido = apellido;
        this.fechaNacimiento = fechaNacimiento;
        this.correo = correo;
        this.contrasena = contrasena;
        this.genero = genero;
        this.paisNacimiento = paisNacimiento;
        this.paisResidencia = paisResidencia;
        this.departamento = departamento;
        this.ciudad = ciudad;
        this.direccion = direccion;
        this.millas = 0;
    }

    @Override
    public String toString() {
        return "com.udea.business.Socio[ socioPK=" + socioPK + " ]";
    }

}
