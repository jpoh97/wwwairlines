/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.business.Avion;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author daemonsoft
 */
@Local
public interface AvionFacadeLocal {

    void create(Avion avion);

    void edit(Avion avion);

    void remove(Avion avion);

    Avion find(Object id);

    List<Avion> findAll();

    List<Avion> findRange(int[] range);

    int count();
    
}
