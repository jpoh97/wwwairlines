/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.business.Tipocabina;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author JPOH97
 */
@Local
public interface TipocabinaFacadeLocal {

    void create(Tipocabina tipocabina);

    void edit(Tipocabina tipocabina);

    void remove(Tipocabina tipocabina);

    Tipocabina find(Object id);

    List<Tipocabina> findAll();

    List<Tipocabina> findRange(int[] range);

    int count();
    
}
