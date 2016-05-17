/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.controller;

import com.udea.business.Aeropuerto;
import com.udea.ejb.AeropuertoFacadeLocal;
import com.udea.ejb.CiudadFacadeLocal;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;

/**
 *
 * @author daemonsoft
 */
@ManagedBean
public class AeropuertoBean implements Serializable {
    
    @EJB 
    private AeropuertoFacadeLocal aeropuertoFacade;
    @EJB 
    private CiudadFacadeLocal ciudadFacade;
    
    private String aeroTxt;

    public String getAeroTxt() {
        return aeroTxt;
    }

    public void setAeroTxt(String aeroTxt) {
        this.aeroTxt = aeroTxt;
    }
    
    public List<String> completeText(String query){
        List <String> aeropuertos = new ArrayList();
        for(Aeropuerto a : aeropuertoFacade.findAll()){
            System.out.println(a.getCiudad());
            aeropuertos.add(a.getNombre() + ciudadFacade.find(a.getCiudad()).getNombre());
            
        } 
        System.out.println(aeropuertos.toString());
        return aeropuertos;
    }
    
    /**
     * Creates a new instance of aeropuertoBean
     */
    public AeropuertoBean() {
    }
    
}
