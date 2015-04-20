/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.unicamp.ft.dao;

import br.unicamp.ft.commons.util.HibernateUtil;
import br.unicamp.ft.transferobjects.EstabelecimentoTO;
import br.unicamp.ft.transferobjects.EventoTO;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Matheus
 */
public class EstabelecimentoDAO {

    private Session session;

    public EstabelecimentoDAO() {
    }

    public void insert(EstabelecimentoTO estabelecimentoTO) {
        session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(estabelecimentoTO);
        session.getTransaction().commit();
        HibernateUtil.close();
    }

    public void update(EstabelecimentoTO estabelecimentoTO) {
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.update(estabelecimentoTO);
            session.getTransaction().commit();
            HibernateUtil.close();
        } catch (HibernateException he) {
            he.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void remove(EstabelecimentoTO estabelecimentoTO) {
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.delete(estabelecimentoTO);
            session.getTransaction().commit();
            HibernateUtil.close();
        } catch (HibernateException he) {
            he.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public EstabelecimentoTO selectByID(int ID) {
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            EstabelecimentoTO estabelecimentoTO = (EstabelecimentoTO) session.load(EstabelecimentoTO.class, ID);
            HibernateUtil.close();
            return estabelecimentoTO;
        } catch (HibernateException he) {
            he.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
