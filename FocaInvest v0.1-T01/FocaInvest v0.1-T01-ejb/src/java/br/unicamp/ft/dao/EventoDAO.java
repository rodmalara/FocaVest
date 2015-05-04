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
        try{
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.save(eventoTO);
            session.getTransaction().commit();
            session.close();
            HibernateUtil.close();
        }catch(HibernateException he){
            he.printStackTrace();
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public void updateEvento(EventoTO eventoTO) {
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.update(eventoTO);
            session.getTransaction().commit();
            session.close();
            HibernateUtil.close();
        } catch (HibernateException he) {
            he.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void remove(EventoTO eventoTO) {
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.delete(eventoTO);
            session.getTransaction().commit();
            session.close();
            HibernateUtil.close();
        } catch (HibernateException he) {
            he.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public EventoTO selectByID(int ID) {
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            EventoTO eventoTO = (EventoTO) session.load(EventoTO.class, ID);
            HibernateUtil.close();
            session.close();
            return eventoTO;
        } catch (HibernateException he) {
            he.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public List<EventoTO> selectListEventoByEstabelecimentoID(int _id){
        return session.
            createQuery("from EventoTO e where e.estabelecimentoTO.id = "+ _id).list();
    }
}
