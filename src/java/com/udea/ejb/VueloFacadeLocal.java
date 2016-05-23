/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.business.Aeropuerto;
import com.udea.business.Vuelo;
import java.util.Date;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author daemonsoft
 */
@Local
public interface VueloFacadeLocal {

    void create(Vuelo vuelo);

    void edit(Vuelo vuelo);

    void remove(Vuelo vuelo);

    Vuelo find(Object id);

    List<Vuelo> findAll();

    List<Vuelo> findRange(int[] range);

    List<Vuelo> findFlights(Aeropuerto aeropuerto_salida, Aeropuerto aeropuerto_llegada, Date fecha1);

    int count();

}
