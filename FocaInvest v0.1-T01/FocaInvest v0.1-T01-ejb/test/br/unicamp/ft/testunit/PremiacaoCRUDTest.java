/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.testunit;

import br.unicamp.ft.dao.PremiacaoDAO;
import br.unicamp.ft.transferobjects.PremiacaoTO;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

/**
 *
 * @author Matheus
 */
public class PremiacaoCRUDTest {
    private PremiacaoDAO premiacaoDAO;
    
    
    @Before
    public void setUp(){
        System.out.println("Inicializando...\n");
        premiacaoDAO = new PremiacaoDAO(); 
    }
    
    /*@Test
    public void InsertPremiacaoTest(){
      //new PremiacaoDAO().insertPremiacao(new PremiacaoTO(1, "Matheus Florêncio", 20));
      System.out.println("** Inserção executada com sucesso\n");
    }*/
    
    //@Test
    public void selectPremiacaoByNomeConsumidorTest(){
        premiacaoDAO.selectPremiacaoByNomeConsumidor("");
        System.out.println("** Busca por nome do consumidor executada com sucesso\n");
    }
    
    @After
    public void tearDown(){
        System.out.println("Saindo...");
    }
    
}
