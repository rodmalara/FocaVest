/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package HibernateStudies.OneToOne;

import br.unicamp.ft.commons.util.HibernateUtil;
import br.unicamp.ft.transferobjects.EventoTO;
import org.hibernate.Session;

/**
 *
 * @author Matheus
 */
public class EnderecoDAO {
    private Session session;
    
    public void insert(Endereco _endereco) {
        session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(_endereco);
        session.getTransaction().commit();
        HibernateUtil.close();
    }
}
