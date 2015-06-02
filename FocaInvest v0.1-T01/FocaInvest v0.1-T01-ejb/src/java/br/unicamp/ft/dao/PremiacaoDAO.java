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
            
    public PremiacaoDAO(){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public void insertPremiacao(PremiacaoTO _EventoTO){
        session.save(_EventoTO);
    }
    
    public PremiacaoTO selectByID(int ID) {
        PremiacaoTO premiacaoTO = (PremiacaoTO) session.load(PremiacaoTO.class, ID);
        return premiacaoTO;
    }
    
    public void selectPremiacaoByNomeConsumidor(String _nomeConsumidor){
        Query query = session.createQuery(
                "FROM Premiacao premiacao "
                        + "LEFT JOIN premiacao.estabelecimentoID estabelecimento "
                        + "WHERE estabelecimento.estabelecimentoID = :estabeleimentoID");
        query.setParameter("estabeleimentoID", 1);
        List listPremiacoes = query.list();
    }
    
    public void selectPremiacaoByEstabelecimento(String _nomeEstabelecimento){
        Query query = session.createQuery(
                "FROM Premiacao premiacao "
                        + "LEFT JOIN premiacao.estabelecimentoID estabelecimento "
                        + "WHERE estabelecimento.estabelecimentoID = :estabeleimentoID");
        query.setParameter("estabeleimentoID", 1);
        List listPremiacoes = query.list();
    }  
    
    public void remove(int ID) {
            PremiacaoTO premiacaoTO;
            premiacaoTO = selectByID(ID);
            session.delete(premiacaoTO);
    }
    
    public PremiacaoTO selectByID(int ID) {
            return (PremiacaoTO)
                    session.createQuery("from PremiacaoTO e where e.id = " + ID).list().get(0);
    }
    
    public List<PremiacaoTO> selectListPremiacaoByEstabelecimentoID(int _id){
        return session.
            createQuery("from PremiacaoTO e where e.estabelecimentoTO.id = "+ _id +" order by C_DataInicio asc, C_DataFinal asc").list();
    }   
}
