/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.unicamp.ft.dao;

import br.unicamp.ft.commons.util.HibernateUtil;
import br.unicamp.ft.transferobjects.EstabelecimentoTO;
import br.unicamp.ft.transferobjects.EventoTO;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Matheus
 */
public class EstabelecimentoDAO {
    private Session session;

    public EstabelecimentoDAO() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public void insertEstabelecimento(EstabelecimentoTO estabelecimentoTO) {
        session.save(estabelecimentoTO);
    }

    public void updateEstabelecimento(EstabelecimentoTO estabelecimentoTO) {
        session.update(estabelecimentoTO);
    }

    public void removeEstabelecimento(EstabelecimentoTO estabelecimentoTO) {
        session.delete(estabelecimentoTO);
    }

    public EstabelecimentoTO selectByID(int ID) {
        return (EstabelecimentoTO) session.load(EstabelecimentoTO.class, ID);     
    }

    public EstabelecimentoTO selectByEstablishmentByEmail(String _name){
        return (EstabelecimentoTO) session.createQuery("from EstabelecimentoTO e where e.email = '" + _name + "'").list().get(0);
    }
    
    public List<EstabelecimentoTO> selectListEstabelecimentoByRelevancia(){
       return session.createQuery("from EstabelecimentoTO e order by e.relevancia").list();
    }
    
    public List<EstabelecimentoTO> selectListEstabelecimento(){
       return session.createQuery("from EstabelecimentoTO").list();
    }
}
