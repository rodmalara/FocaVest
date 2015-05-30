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
    private Transaction trans;
            
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
	try {
	session = HibernateUtil.getSessionFactory().openSession();
	session.beginTransaction();
	session.update(consumidorTO);
	session.getTransaction().commit();
	HibernateUtil.close();
	} catch (HibernateException he) {
            he.printStackTrace();
	} catch (Exception e) {
            e.printStackTrace();
	}
    }

    public void remove(ConsumidorTO consumidorTO) {
    	try {
        	session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		session.delete(consumidorTO);
		session.getTransaction().commit();
		HibernateUtil.close();
	} catch (HibernateException he) {
		he.printStackTrace();
	} catch (Exception e) {
		e.printStackTrace();
    	}
    }
    
    public ConsumidorTO selectByID(int ID) {
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            ConsumidorTO consumidorTO = (ConsumidorTO) session.load(ConsumidorTO.class, ID);
            HibernateUtil.close();
            return consumidorTO;
        } catch (HibernateException he) {
            he.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<ConsumidorDAO> selectListConsumidorByEvento(int eventoID) {
        return (List<ConsumidorDAO>) session.createQuery("from T_Consumidor_Evento as ce inner join ce.ConsumidorTO where ce.eventoID = '" + eventoID + "'").list().get(0);
        
    }
}
