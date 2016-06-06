/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.business.Escala;
import com.udea.business.Vuelo;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author JPOH97
 */
@Stateless
public class EscalaFacade extends AbstractFacade<Escala> implements EscalaFacadeLocal {

    @PersistenceContext(unitName = "WWWAirlinesPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public EscalaFacade() {
        super(Escala.class);
    }

    @Override
    public Escala find(Vuelo idvuelo) {
        Query query = em.createQuery("SELECT e FROM Escala e WHERE e.idvuelo = :value1");
        query.setParameter("value1", idvuelo);
        if (query.getResultList().isEmpty()) {
            return null;
        }
        return (Escala) query.getResultList().get(0);
    }

    @Override
    public List<Escala> findByVuelo(Vuelo idvuelo) {
        Query query = em.createQuery("SELECT e FROM Escala e WHERE e.idvuelo = :value1");
        query.setParameter("value1", idvuelo);
        if (query.getResultList().isEmpty()) {
            return null;
        }
        return query.getResultList();        
    }

}
