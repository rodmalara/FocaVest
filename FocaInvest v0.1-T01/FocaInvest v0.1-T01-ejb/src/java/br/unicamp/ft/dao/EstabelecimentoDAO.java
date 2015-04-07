/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.dao;

import br.unicamp.ft.commons.util.HibernateUtil;
import br.unicamp.ft.transferobjects.EstabelecimentoTO;
import org.hibernate.Session;

/**
 *
 * @author Matheus
 */
public class EstabelecimentoDAO {
    private Session session;
    
    public void insert(EstabelecimentoTO _estabelecimentoTO){
        session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(_estabelecimentoTO);
        session.getTransaction().commit();
        HibernateUtil.close();
    }   
}
