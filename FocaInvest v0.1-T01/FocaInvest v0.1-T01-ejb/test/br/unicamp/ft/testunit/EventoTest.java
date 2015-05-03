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
import java.util.List;
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
    
    
    
    //@Test
    public void InsertEventoTest(){
        EstabelecimentoTO estabelecimentoTO = new  EstabelecimentoTO();
        EventoTO eventoTO = new  EventoTO();
        
        estabelecimentoTO.setNome("Lord bar");
        new EstabelecimentoDAO().insertEstabelecimento(estabelecimentoTO);
        eventoTO.setNome("Festa do Peão");
        eventoTO.setEstabelecimentoTO(estabelecimentoTO);
        new EventoDAO().insertEvento(eventoTO);
    }
    
    /*@Test
    public void SelectListEventoByIDTest(){
        InsertManyEventsTest(5);
        List<EventoTO> listEvents = new EventoDAO().selectListEvento();
        
        for (EventoTO _eventoTO : listEvents){
            System.out.println("Nome do bar: "+ _eventoTO.getEstabelecimentoTO().getNome());
            System.out.println("Nome do evento: "+ _eventoTO.getNome());
        }
    }*/

    @Test
    public void selectListEventoByEstabelecimentoIDTest(){
        System.out.println(new EventoDAO().selectListEventoByEstabelecimentoID(1).get(2).getNome());
    }
    
    @After
    public void tearDown(){
        System.out.println("Saindo...");
    }

    public void InsertManyEventsTest(int _nums){
        for(int i=0; i<_nums; i++){
            EstabelecimentoTO estabelecimentoTO = new  EstabelecimentoTO();
            EventoTO eventoTO = new  EventoTO();
        
            estabelecimentoTO.setNome("Lord bar");
            new EstabelecimentoDAO().insertEstabelecimento(estabelecimentoTO);
            eventoTO.setNome("Festa do Peão");
            eventoTO.setEstabelecimentoTO(estabelecimentoTO);
            new EventoDAO().insertEvento(eventoTO);
        }
        
    }
}
