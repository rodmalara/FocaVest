/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.transferobjects;
//import org.hibernate.annotations.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.*;

/**
 *
 * @author Matheus
 */

//@Entity
//@Table(name="T_TestTO")
public class TestTO {
    
    private int testID;
    private String testString;
    
    public void setTestID(int _testID){
        this.testID = _testID;
    }
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "C_TestID")
    public int getTestID(){
        return this.testID;
    }
    
    public void setTestString(String _testString){
        this.testString = _testString;
    }
    
    @Column(name = "C_TestString")
    public String getTestString(){
        return this.testString;
    }
}
