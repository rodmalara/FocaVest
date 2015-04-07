/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.commons.util;

import com.fasterxml.classmate.AnnotationConfiguration;
import java.io.File;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Matheus
 */
public class HibernateUtil {
    
    private static final SessionFactory sessionFactory = buildSessionFactory();
    
    private static SessionFactory buildSessionFactory(){
        try{
            return new Configuration().configure(new File("C:\\Users\\Matheus\\Google Drive\\Faculdade - 2 SEM 2014\\Estrutura de Arquivos\\FocaInvest v0.1-T01\\FocaInvest v0.1-T01-ejb\\src\\java\\resources\\hibernate.cfg.xml")).buildSessionFactory();
        }catch(HibernateException hibernateError){
            System.out.println("Error: " + hibernateError.getMessage());
            return null;
        }
    }
    
    public static SessionFactory getSessionFactory(){
        return sessionFactory;
    }
    
    public static void close(){
        getSessionFactory().close();
    }
}
