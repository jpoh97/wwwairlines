/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.business.Escala;
import com.udea.business.Vuelo;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author JPOH97
 */
@Local
public interface EscalaFacadeLocal {

    void create(Escala escala);

    void edit(Escala escala);

    void remove(Escala escala);

    Escala find(Vuelo idvuelo);
    
    List<Escala> findByVuelo(Vuelo idvuelo);
    
    List<Escala> findAll();

    List<Escala> findRange(int[] range);

    int count();
    
}
