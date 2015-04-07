package br.unicamp.ft.testunit;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import br.unicamp.nonscope.Calculator;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Matheus
 */
public class CalculatorJUnitTest {
    private Calculator calculatorTest;
    private int inputOne, inputTwo;
    
    public CalculatorJUnitTest() {}
    
    @Before
    public void setUp() throws Exception{
        System.out.println("Initlializing Test...");
        this.configureValues(20, 30);
    }
    
    public void configureValues(int _inputOne, int _inputTwo){
        this.inputOne = _inputOne;
        this.inputTwo = _inputTwo;
    }
    
    @Test
    public void sumTest(){
        calculatorTest = new Calculator(inputOne, inputTwo);
        assertEquals(this.calculatorTest.sum(), 50);
    }
    
    @Test
    public void subtractTest(){
        calculatorTest = new Calculator(inputOne, inputTwo);
        assertEquals(this.calculatorTest.subtract(), -10);
    }
    
    @Test
    public void divideTest(){
        calculatorTest = new Calculator(inputOne, inputTwo);
        assertEquals(this.calculatorTest.divide(), 3);
    }
    
    @Test
    public void multiplyTest(){
        calculatorTest = new Calculator(inputOne, inputTwo);
        assertEquals(this.calculatorTest.multiply(), 600);
    }
    
    @After
    public void tearDown() {
        System.out.println("Closing Test...");
    }
}
