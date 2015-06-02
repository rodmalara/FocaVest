/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.dao;

import br.unicamp.ft.commons.util.HibernateUtil;
import br.unicamp.ft.transferobjects.ConsumidorTO;
import br.unicamp.ft.transferobjects.EstabelecimentoTO;
import br.unicamp.ft.transferobjects.PontosTO;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author Matheus
 */
public class PontosDAO {
    private Session session;
    
    public PontosDAO() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public void insertPontos(PontosTO _pontosTO) {
            session.save(_pontosTO);
    }

    public void updatePontos(PontosTO _pontosTO) {
            session.update(_pontosTO);
    }

    public void remove(PontosTO _pontosTO) {
            session.delete(_pontosTO);
    }

    public PontosTO selectByID(int ID) {
            return (PontosTO)
                    session.createQuery("from PontosTO p where p.id = " + ID).list().get(0);
    }
    
    public PontosTO selectPontosTOByEstabelecimentoAndConsumidor(EstabelecimentoTO _estabelecimentoTO, ConsumidorTO _consumidorTO){
     return (PontosTO)  session.createQuery(
             "from PontosTO p where p.estabelecimentoTO = :estabelecimentoTO and p.consumidorTO = :consumidorTO").
             setParameter("estabelecimentoTO", _estabelecimentoTO).
             setParameter("consumidorTO", _consumidorTO).
             uniqueResult();
    }
    
    public List<PontosTO> selectPontosTOByConsumidor(ConsumidorTO _consumidorTO){
        return (List<PontosTO>) session.createQuery("from PontosTO p where p.consumidorTO = :consumidorTO").
                setParameter("consumidorTO", _consumidorTO).list();
    }
    
}
