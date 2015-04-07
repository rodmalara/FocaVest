/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.dao;

import br.unicamp.ft.transferobjects.EventoTO;
import br.unicamp.ft.commons.util.HibernateUtil;
import org.hibernate.Session;

/**
 *
 * @author Matheus
 */
public class EventoDAO {
    private Session session;
            
    public EventoDAO(){}
    
    public void insert(EventoTO _EventoTO){
        session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(_EventoTO);
        session.getTransaction().commit();
        HibernateUtil.close();
    }  
    
}
