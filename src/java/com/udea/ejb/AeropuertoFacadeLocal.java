/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.business.Aeropuerto;
import com.udea.business.Ciudad;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author daemonsoft
 */
@Local
public interface AeropuertoFacadeLocal {

    void create(Aeropuerto aeropuerto);

    void edit(Aeropuerto aeropuerto);

    void remove(Aeropuerto aeropuerto);

    Aeropuerto findByCity(String ciudad); 

    List<Aeropuerto> findAll();

    List<Aeropuerto> findRange(int[] range);

    int count();
    
}
