/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.business.Escala;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author daemonsoft
 */
@Local
public interface EscalaFacadeLocal {

    void create(Escala escala);

    void edit(Escala escala);

    void remove(Escala escala);

    Escala find(Object id);

    List<Escala> findAll();

    List<Escala> findRange(int[] range);

    int count();
    
}
