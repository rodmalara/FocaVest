/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.testunit;

import br.unicamp.ft.dao.TestDAO;
import br.unicamp.ft.transferobjects.TestTO;

/**
 *
 * @author Matheus
 */
public class MainTest {
    public static void main(String[] args){
        System.out.println(":: Test Workplace ");
        System.out.println("");
        TestDAO testDAO = new TestDAO();
        TestTO testTO = new TestTO();
        testTO.setTestString("- Unit Test");
        testDAO.insert(testTO);
    }
}
