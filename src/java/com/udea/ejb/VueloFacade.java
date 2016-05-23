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
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author daemonsoft
 */
@Stateless
public class VueloFacade extends AbstractFacade<Vuelo> implements VueloFacadeLocal {

    @PersistenceContext(unitName = "WWWAirlinesPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public VueloFacade() {
        super(Vuelo.class);
    }

    @Override
    public List<Vuelo> findFlights(Aeropuerto aeropuerto_salida, Aeropuerto aeropuerto_llegada, Date fecha1) {
        Query query = em.createQuery("SELECT v FROM Vuelo v WHERE v.aeropuertoSalida = :value1 "
                + "AND v.aeropuertoLlegada = :value2 AND v.fecha = :value3");
        query.setParameter("value1", aeropuerto_salida);
        query.setParameter("value2", aeropuerto_llegada);
        query.setParameter("value3", fecha1);
        if (query.getResultList().isEmpty()) {
            return null;
        }
        return query.getResultList();
    }

}

