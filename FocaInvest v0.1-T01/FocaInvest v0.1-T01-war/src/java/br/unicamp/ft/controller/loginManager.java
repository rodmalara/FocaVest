/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.unicamp.ft.controller;

/**
 *
 * @author rodrigo
 */
import br.unicamp.ft.commons.util.HibernateUtil;
import java.util.Iterator;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class LoginManager {

    private Session session;
    private int count = 0;

    public boolean isValidLogin(String uname, String pass) {

        session = HibernateUtil.getSessionFactory().openSession();
        //String query = "select c_nome, c_senha from t_estabelecimento where c_nome = '" + uname + "' and c_senha = '" + pass + "'";
        String query = "FROM EstabelecimentoTO e where e.email = '" + uname + "' and e.senha = '" + pass + "'";
        Query DBquery = session.createQuery(query);
        for (Iterator it = DBquery.iterate(); it.hasNext();) {            it.next();
            count++;
        }
        System.out.println("Total rows: " + count);
        if (count == 1) {
            return true;
        } else {
            return false;
        }
    }
}