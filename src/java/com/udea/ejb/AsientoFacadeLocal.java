/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.business.Asiento;
import com.udea.business.Cabina;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author JPOH97
 */
@Local
public interface AsientoFacadeLocal {

    void create(Asiento asiento);

    void edit(Asiento asiento);

    void remove(Asiento asiento);

    Asiento find(Object id);
    
    List<Asiento> findByCabina(Cabina cabina);

    List<Asiento> findAll();

    List<Asiento> findRange(int[] range);

    int count();
    
}
