/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.business.Aeropuerto;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author daemonsoft
 */
@Stateless
public class AeropuertoFacade extends AbstractFacade<Aeropuerto> implements AeropuertoFacadeLocal {

    @PersistenceContext(unitName = "WWWAirlinesPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AeropuertoFacade() {
        super(Aeropuerto.class);
    }

    @Override
    public Aeropuerto find(String nombre) {
        Query query = em.createQuery("SELECT a FROM Aeropuerto a WHERE a.nombre = :value");
        query.setParameter("value", nombre);
        if (query.getResultList().isEmpty()) {
            return null;
        }
        return (Aeropuerto) query.getResultList().get(0);
    }

}
