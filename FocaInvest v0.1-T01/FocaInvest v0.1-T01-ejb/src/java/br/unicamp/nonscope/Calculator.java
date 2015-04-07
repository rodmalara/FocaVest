/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.nonscope;
import junit.framework.Assert;
/**
 *
 * @author Matheus
 */
public class Calculator {
    private int numOne;
    private int numTwo;
    
    public Calculator(int _numOne, int _numTwo){
        this.numOne = _numOne;
        this.numTwo = _numTwo;
    }
    
    public int sum(){
        return this.numOne + this.numTwo;
    }
    
    public int subtract(){
        return this.numOne - this.numTwo;
    }

    public int multiply(){
        return this.numOne * this.numTwo;
    }
    
    public int divide(){
        return this.numOne / this.numTwo;
    }
}
