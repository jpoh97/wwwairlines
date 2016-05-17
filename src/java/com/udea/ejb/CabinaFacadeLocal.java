/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.business.Cabina;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author daemonsoft
 */
@Local
public interface CabinaFacadeLocal {

    void create(Cabina cabina);

    void edit(Cabina cabina);

    void remove(Cabina cabina);

    Cabina find(Object id);

    List<Cabina> findAll();

    List<Cabina> findRange(int[] range);

    int count();
    
}
