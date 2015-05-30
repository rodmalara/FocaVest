/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.dao;

import br.unicamp.ft.commons.util.HibernateUtil;
import br.unicamp.ft.transferobjects.EventoTO;
import br.unicamp.ft.transferobjects.PremiacaoTO;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Matheus
 */
public class PremiacaoDAO {
    private Session session;
            
    public PremiacaoDAO(){}
    
    public void insertPremiacao(PremiacaoTO _EventoTO){
        session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(_EventoTO);
        session.getTransaction().commit();
        HibernateUtil.close();
    }  
    
    public PremiacaoTO selectByID(int ID) {
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            PremiacaoTO premiacaoTO = (PremiacaoTO) session.load(PremiacaoTO.class, ID);
            HibernateUtil.close();
            return premiacaoTO;
        } catch (HibernateException he) {
            he.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public void selectPremiacaoByNomeConsumidor(String _nomeConsumidor){
        session.beginTransaction();
        Query query = session.createQuery(
                "FROM Premiacao premiacao "
                        + "LEFT JOIN premiacao.estabelecimentoID estabelecimento "
                        + "WHERE estabelecimento.estabelecimentoID = :estabeleimentoID");
        query.setParameter("estabeleimentoID", 1);
        List listPremiacoes = query.list();
    }
    

    
    public List<PremiacaoTO> selectListPremiacaoByEstabelecimentoID(int _id){
        return session.
            createQuery("from PremiacaoTO e where e.estabelecimentoTO.id = "+ _id +" order by C_Nome asc").list();
    }
    
    public void remove(int ID) {
            PremiacaoTO premiacaoTO;
            premiacaoTO = selectByID(ID);
            session.delete(premiacaoTO);
    }
    
    
}
