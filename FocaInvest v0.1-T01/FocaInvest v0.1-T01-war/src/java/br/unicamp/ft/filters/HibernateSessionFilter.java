/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.filters;

import br.unicamp.ft.commons.util.HibernateUtil;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import org.hibernate.SessionFactory;

/**
 *
 * @author Matheus
 */
@WebFilter("/*")
public class HibernateSessionFilter implements Filter {

    private SessionFactory sessionFactory;
    
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
      
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        sessionFactory = HibernateUtil.getSessionFactory();
        sessionFactory.getCurrentSession().beginTransaction();
        
        chain.doFilter(request, response);
        
        sessionFactory.getCurrentSession().getTransaction().commit();
        sessionFactory.getCurrentSession().close();
    }
    
    @Override
    public void destroy() {
        
    }
    
}
