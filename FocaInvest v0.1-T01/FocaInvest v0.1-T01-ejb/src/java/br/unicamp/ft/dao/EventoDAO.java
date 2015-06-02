/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.unicamp.ft.dao;

import br.unicamp.ft.commons.util.HibernateUtil;
import br.unicamp.ft.transferobjects.EstabelecimentoTO;
import br.unicamp.ft.transferobjects.EventoTO;
import br.unicamp.ft.transferobjects.TestTO;
import java.util.List;
import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Matheus
 */
public class EventoDAO {
    private Session session;
    
    public EventoDAO() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public void insertEvento(EventoTO eventoTO) {
            session.save(eventoTO);
    }

    public void updateEvento(EventoTO eventoTO) {
            session.update(eventoTO);
    }

    public void remove(EventoTO eventoTO) {
            session.delete(eventoTO);
    }

    public EventoTO selectByID(int ID) {
            return (EventoTO)
                    session.createQuery("from EventoTO e where e.id = " + ID).list().get(0);
    }
    
    public List<EventoTO> selectListEventoByEstabelecimentoID(int _id){
        return session.
            createQuery("from EventoTO e where e.estabelecimentoTO.id = "+ _id).list();
    }
}
