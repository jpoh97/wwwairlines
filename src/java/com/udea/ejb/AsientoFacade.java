/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.business.Asiento;
import com.udea.business.Cabina;
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
public class AsientoFacade extends AbstractFacade<Asiento> implements AsientoFacadeLocal {

    @PersistenceContext(unitName = "WWWAirlinesPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AsientoFacade() {
        super(Asiento.class);
    }

    @Override
    public List<Asiento> findByCabina(Cabina cabina) {
        Query q = em.createQuery("SELECT a FROM Asiento a WHERE a.cabina = :value");
        q.setParameter("value", cabina);
        if (q.getResultList().isEmpty()) {
            return null;
        }
        return q.getResultList();
    }

}
