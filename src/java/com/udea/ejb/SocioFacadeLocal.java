/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.business.Socio;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author JPOH97
 */
@Local
public interface SocioFacadeLocal {

    void create(Socio socio);

    void edit(Socio socio);

    void remove(Socio socio);

    Socio find(Object id);

    List<Socio> findAll();

    List<Socio> findRange(int[] range);

    int count();
    
}
