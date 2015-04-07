/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.dao;

import br.unicamp.ft.commons.util.HibernateUtil;
import br.unicamp.ft.transferobjects.TestTO;
import org.hibernate.Session;


/**
 *
 * @author Matheus
 */
public class TestDAO {
    
    private Session session;
            
    public TestDAO(){}
    
    public void insert(TestTO _testTO){
        session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(_testTO);
        session.getTransaction().commit();
        HibernateUtil.close();
    }    
}
