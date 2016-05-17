/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.business.Avion;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author daemonsoft
 */
@Stateless
public class AvionFacade extends AbstractFacade<Avion> implements AvionFacadeLocal {

    @PersistenceContext(unitName = "WWWAirlinesPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AvionFacade() {
        super(Avion.class);
    }
    
}
