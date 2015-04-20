/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.testunit;

import br.unicamp.ft.dao.ConsumidorDAO;
import br.unicamp.ft.dao.PremiacaoDAO;
import br.unicamp.ft.transferobjects.ConsumidorTO;
import br.unicamp.ft.transferobjects.PremiacaoTO;
import java.util.List;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

/**
 *
 * @author Matheus
 */
public class ConsumidorTest {
    private ConsumidorDAO consumidorDAO;
    
    @Before
    public void setUp(){
        System.out.println("Inicializando...\n");
        consumidorDAO = new ConsumidorDAO();
    }
    
    @Test
    public void InsertConsumidorTest(){
        consumidorDAO.insert(new ConsumidorTO("Matheus Florêncio", "123456", "math.florencios@gmail.com", "19 9 9695 2446", "11111111", "111111111", 1));
        System.out.println("** Inserção executada com sucesso\n");
    }
    
    @Test 
    public void updateConsumidorTest(){
       ConsumidorTO consumidorTO = consumidorDAO.selectByID(1);
       consumidorTO.setNome("Rodrigo Laurini");
       consumidorDAO.update(consumidorTO);
    }
    
    @Test
    public void selectByIDConsumidorTest(){;
        System.out.println(consumidorDAO.selectByID(1).getNome());
    }
    
    @Test
    public void deleteConsumidorTest(){
        consumidorDAO.remove(consumidorDAO.selectByID(1));
    }
    
    @After
    public void tearDown(){
        System.out.println("Saindo...");
    }
    
}
