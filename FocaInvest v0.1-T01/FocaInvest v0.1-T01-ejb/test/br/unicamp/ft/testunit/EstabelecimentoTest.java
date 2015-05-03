/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.testunit;

import br.unicamp.ft.dao.ConsumidorDAO;
import br.unicamp.ft.dao.EstabelecimentoDAO;
import br.unicamp.ft.dao.EventoDAO;
import br.unicamp.ft.dao.PremiacaoDAO;
import br.unicamp.ft.transferobjects.ConsumidorTO;
import br.unicamp.ft.transferobjects.EstabelecimentoTO;
import br.unicamp.ft.transferobjects.EventoTO;
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
    public void setUp(){}
  
    @Test
    public void InsertEstabelecimentoTest(){
      EstabelecimentoTO estabelecimentoTO = new EstabelecimentoTO(new PremiacaoTO("Matheus Florêncio", 20), 11111111, "Fuxico", "root", "bardofuxico@gmail.com", "33119922", 1);
      estabelecimentoTO.setRelevancia(0);
      new EstabelecimentoDAO().insertEstabelecimento(estabelecimentoTO);
    }
    
    @Test
    public void SelectEstabelecimentoByRelevancia(){
        //InsertManyEstabelecimentosTest(5);
        List<EstabelecimentoTO> listBar = new EstabelecimentoDAO().selectListEstabelecimentoByRelevancia();
        System.out.println("\nSelect Estabelecimento Results -----------------");
        for (EstabelecimentoTO _estabelecimento : listBar) {
            //EventoTO eventoTO = new EventoTO();
            //eventoTO.setNome("Festa do Peão");
            //eventoTO.setEstabelecimentoTO(_estabelecimento);
            //new EventoDAO().insertEvento(eventoTO);
            System.out.println(_estabelecimento.getListEvento().get(0));
        }
        System.out.println("\nSelect Estabelecimento Results -----------------");
    }
    
    /*@Test
    public void SelectEstabelecimentoInnerJoinEventoByRelevancia(){
        InsertManyEstabelecimentosTest(5);
        List<EstabelecimentoTO> listBar = new EstabelecimentoDAO().selectEstabelecimentoInnerJoinEventoByRelevancia();
        System.out.println("Inner Join Results ----------------- \n");
        for (EstabelecimentoTO _estabelecimento : listBar) {
            System.out.print(_estabelecimento.getNome() + "\n");
        }
        System.out.println("\nInner Join Results ----------------- ");
    }*/
    
    @Test
    public void SelectEstabelecimentoByIDTest(){
        System.out.println(new EstabelecimentoDAO().selectByID(1).getNome());
    }
    
    @After
    public void tearDown(){}
    
    /* ## -- Support Functions */
    
    public void InsertManyEstabelecimentosTest(int nums){
      for(int i=0; i<nums; i++){
          EstabelecimentoTO estabelecimentoTO = new EstabelecimentoTO(new PremiacaoTO("Matheus Florêncio", 20), 11111111, "Fuxico", "root", "bardofuxico@gmail.com", "33119922", 1);
          estabelecimentoTO.setRelevancia(i);
          new EstabelecimentoDAO().insertEstabelecimento(estabelecimentoTO);
      }
    }
    
}
