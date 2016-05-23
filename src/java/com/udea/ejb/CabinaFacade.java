/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.business.Avion;
import com.udea.business.Cabina;
import com.udea.business.Escala;
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
public class CabinaFacade extends AbstractFacade<Cabina> implements CabinaFacadeLocal {

    @PersistenceContext(unitName = "WWWAirlinesPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CabinaFacade() {
        super(Cabina.class);
    }

    @Override
    public List<Cabina> find(Avion avion) {
        Query query = em.createQuery("SELECT c FROM Cabina c WHERE c.avion = :value1");
        query.setParameter("value1", avion);
        if (query.getResultList().isEmpty()) {
            return null;
        }
        return query.getResultList();

    }

}
