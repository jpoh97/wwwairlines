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
import javax.ejb.Local;

/**
 *
 * @author JPOH97
 */
@Local
public interface VueloxcabinaFacadeLocal {

    void create(Vueloxcabina vueloxcabina);

    void edit(Vueloxcabina vueloxcabina);

    void remove(Vueloxcabina vueloxcabina);

    Vueloxcabina find(Cabina cabina, Vuelo vuelo);

    List<Vueloxcabina> findAll();

    List<Vueloxcabina> findRange(int[] range);

    int count();
    
}
