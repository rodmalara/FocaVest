/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.testunit;

import br.unicamp.ft.dao.ConsumidorDAO;
import br.unicamp.ft.dao.EstabelecimentoDAO;
import br.unicamp.ft.dao.PremiacaoDAO;
import br.unicamp.ft.transferobjects.ConsumidorTO;
import br.unicamp.ft.transferobjects.EstabelecimentoTO;
import br.unicamp.ft.transferobjects.PremiacaoTO;
import java.util.List;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

/**
 *
 * @author Matheus
 */
public class EstabelecimentoTest {
    @Before
    public void setUp(){
        System.out.println("Inicializando...\n");
        
    }
    
    @Test
    public void InsertEstabelecimentoTest(){
      new EstabelecimentoDAO().insert(new EstabelecimentoTO(
                new PremiacaoTO("Matheus Florêncio", 20), 11111111, "Fuxico", "root", "bardofuxico@gmail.com", "33119922", 1));
    }
    
    @Test
    public void SelectEstabelecimentoByID(){
        System.out.println(new EstabelecimentoDAO().selectByID(1).getNome());
    }
    
    @After
    public void tearDown(){
        System.out.println("Saindo...");
    }
    
}
