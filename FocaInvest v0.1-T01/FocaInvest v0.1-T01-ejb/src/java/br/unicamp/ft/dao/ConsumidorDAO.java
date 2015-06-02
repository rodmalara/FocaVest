package br.unicamp.ft.dao;

import br.unicamp.ft.commons.util.HibernateUtil;
import br.unicamp.ft.transferobjects.ConsumidorTO;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

public class ConsumidorDAO {
    private Session session;
            
    public ConsumidorDAO(){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    /*public ConsumidorTO getUsuarioLoginSenha(String login,String senha){
        session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction();  
        
        return (ConsumidorTO) session.getCurrentSession().createCriteria(ConsumidorTO.class)

                                
                                .add(Restrictions.eq("login", login)) 

                                .add(Restrictions.eq("senha", senha))

                                .uniqueResult();
    }*/
    
    public void insert(ConsumidorTO consumidorTO) {
        session.save(consumidorTO);
    }

    public void update(ConsumidorTO consumidorTO) {
	session.update(consumidorTO);
    }

    public void remove(ConsumidorTO consumidorTO) {
        session.delete(consumidorTO);
    }
    
    public ConsumidorTO selectByID(int ID) {
        return (ConsumidorTO) session.load(ConsumidorTO.class, ID);
    }
    
    public ConsumidorTO selectCustomerByEmail(String _email){
        return (ConsumidorTO) 
                session.createQuery("FROM ConsumidorTO c where c.email = '" + _email + "'").list().get(0);
    }
}

    public List<ConsumidorDAO> selectListConsumidorByEvento(int eventoID) {
        return (List<ConsumidorDAO>) session.createQuery("from T_Consumidor_Evento as ce inner join ce.ConsumidorTO where ce.eventoID = '" + eventoID + "'").list().get(0);
        
    }
}
