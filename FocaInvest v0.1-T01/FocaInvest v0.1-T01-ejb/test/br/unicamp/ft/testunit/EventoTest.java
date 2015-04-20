/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.testunit;

import br.unicamp.ft.dao.EstabelecimentoDAO;
import br.unicamp.ft.dao.EventoDAO;
import br.unicamp.ft.transferobjects.EstabelecimentoTO;
import br.unicamp.ft.transferobjects.EventoTO;
import br.unicamp.ft.transferobjects.PremiacaoTO;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

/**
 *
 * @author Matheus
 */
public class EventoTest {
    @Before
    public void setUp(){
        System.out.println("Inicializando...\n");   
    }
    
    @Test
    public void InsertEventoTest(){
        EstabelecimentoTO estabelecimentoTO = new  EstabelecimentoTO();
        EventoTO eventoTO = new  EventoTO();
        
        estabelecimentoTO.setNome("Lord bar");
        new EstabelecimentoDAO().insert(estabelecimentoTO);
        eventoTO.setNome("Festa do Peão");
        eventoTO.setEstabelecimentoTO(estabelecimentoTO);
        new EventoDAO().insert(eventoTO);
    }
    
    @After
    public void tearDown(){
        System.out.println("Saindo...");
    }
}
