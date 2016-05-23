/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.business.Cabina;
import com.udea.business.Vuelo;
import com.udea.business.Vueloxcabina;
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
public class VueloxcabinaFacade extends AbstractFacade<Vueloxcabina> implements VueloxcabinaFacadeLocal {

    @PersistenceContext(unitName = "WWWAirlinesPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public VueloxcabinaFacade() {
        super(Vueloxcabina.class);
    }

    @Override
    public Vueloxcabina find(Cabina cabina, Vuelo vuelo) {
        Query query = em.createQuery("SELECT vc FROM Vueloxcabina vc WHERE vc.vuelo = :value1 "
                + "AND vc.cabina = :value2");
        query.setParameter("value1", vuelo);
        query.setParameter("value2", cabina);
        if (query.getResultList().isEmpty()) {
            return null;
        }
        return (Vueloxcabina) query.getResultList().get(0);
    }

}
