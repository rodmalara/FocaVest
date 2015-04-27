/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.testunit;

import HibernateStudies.OneToOne.Endereco;
import HibernateStudies.OneToOne.EnderecoDAO;
import HibernateStudies.OneToOne.Pessoa;
import br.unicamp.ft.dao.EstabelecimentoDAO;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

/**
 *
 * @author Matheus
 */
public class OneToOneTest {
   @Before
   public void setUp(){
        System.out.println("Inicializando...\n");
   }
   
   @Test
   public void insert(){
       new EnderecoDAO().insert(new Endereco(new Pessoa("Matheus"), "Rua Cinira Fonseca de Oliveira"));
   }
   
   @After
    public void tearDown(){
        System.out.println("Saindo...");
    }
}
