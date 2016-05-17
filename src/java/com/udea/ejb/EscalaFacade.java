/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.business.Escala;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author daemonsoft
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
    
}
