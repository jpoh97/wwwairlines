/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.business.Aeropuerto;
import com.udea.business.Ciudad;
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
    public List<Aeropuerto> findByCity(String ciudad) {
        Query q = em.createQuery("SELECT a FROM Aeropuerto a WHERE a.ciudad = :value");
        q.setParameter("value", ciudad);
        if(q.getResultList().isEmpty()){
            return null;
        }
        return q.getResultList();
    }
    
}
