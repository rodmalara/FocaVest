/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.testunit;
import javax.persistence.*;
/**
 *
 * @author Matheus
 */

public class ConfigurationTest {
    private String testString;
    
    public void setTestString(String _testString){
        this.testString = _testString;
    }
    
    public String getTestString(){
        return testString;
    }
}
