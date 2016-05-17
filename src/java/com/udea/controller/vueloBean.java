/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.controller;

import com.udea.ejb.VueloFacadeLocal;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import javax.ejb.EJB;

/**
 *
 * @author daemonsoft
 */
@Named(value = "vueloBean")
@SessionScoped
public class vueloBean implements Serializable {
    
    @EJB
    private VueloFacadeLocal vueloFacade;
    /**
     * Creates a new instance of socioBean
     */
    public vueloBean() {
    }
    
}
